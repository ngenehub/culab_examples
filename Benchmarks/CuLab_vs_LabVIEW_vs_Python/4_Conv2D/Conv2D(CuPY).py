# -*- coding: utf-8 -*-
import cupy as cp
import numpy as np
from cupyx.scipy.signal import convolve2d
import time
from datetime import datetime
import os

image_shapes = [128,256,512,1024,2048]
kernel_shapes = [3,5,7,9,11,13,15]
batch_size = 100
datatype = 'SGL' #only for report naming

# Generate a timestamp
timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
gpu_props = cp.cuda.runtime.getDeviceProperties(0)
gpu_name = gpu_props['name'].decode('utf-8').replace(" ", "_").replace(".", "")

# Define the CSV file path with timestamp and save destination
current_directory = os.path.dirname(__file__)
save_destination = os.path.join(current_directory, "results","Conv2D")
os.makedirs(save_destination, exist_ok=True)  # Ensure the directory exists, create if necessary

csv_file_path = os.path.join(save_destination, f"Conv2D_CuPY_{datatype}_{timestamp}_{gpu_name}.csv")

# Function to perform batch convolution
def direct_convolution(image_np, kernel_cp):
    data_cp = cp.asarray(cp.float32(image_np))
    conv_cp = convolve2d(data_cp, kernel_cp, mode='same', boundary='symm')
    conv_np = np.float32(conv_cp.get())
    return conv_np

# Define the IterationResult class
cupy_exec_time_list = []

# Iterate over each combination of image and kernel shape
for i in range(len(image_shapes)):
    for j in range(len(kernel_shapes)):
        warmup_iterations = 5
        dt_list = []
        
        img_shape_now = image_shapes[i]
        kernel_shape_now = kernel_shapes[j]
        image_shape = (img_shape_now, img_shape_now)
        # Generate random batch of images and kernels
        images = np.random.rand( *image_shape).astype('float32')
        kernel_shape = (kernel_shape_now, kernel_shape_now)
        kernel_np = np.random.rand(*kernel_shape).astype('float32')
        kernel_cp = cp.asarray(cp.float32(kernel_np))
    
        # Benchmark convolution time
        start_time = time.time()
        for k in range(batch_size):
             start_iter = time.time()
             conv = direct_convolution(images, kernel_cp)
             end_iter = time.time()
             dt_list.append(end_iter - start_iter)
             
        # Remove warm-up iterations from the front
        dt_list = dt_list[:warmup_iterations]
        mean_dt = sum(dt_list) / len(dt_list)
        cupy_exec_time_ms = mean_dt * 1000
        cupy_exec_time_list.append(cupy_exec_time_ms)
    
        # Print results
        print("Image Shape: {}, Kernel Shape: {}, Exec Time(ms): {}".format(image_shape, kernel_shape, cupy_exec_time_ms))
    
        # Free GPU memory
        cp.get_default_memory_pool().free_all_blocks()
        cp.get_default_pinned_memory_pool().free_all_blocks()

# Open CSV file for writing
with open(csv_file_path, mode='w', newline='') as file:
    header = kernel_shapes
    header.sort()
    shapes = [0] + image_shapes
    shapes.sort()
    reshaped_fps_list = np.array(cupy_exec_time_list).reshape(len(image_shapes), len(kernel_shapes))
    data_csv = np.vstack((header, reshaped_fps_list))
    writedata = np.insert(data_csv, 0, shapes, axis=1)
    np.savetxt(csv_file_path, writedata, fmt='%f', delimiter=",")

print(f"CSV file '{csv_file_path}' has been created successfully.")
