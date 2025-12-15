
import cupy as cp
import numpy as np
import time
import csv
import os


# Define the CSV file path with timestamp and save destination
gpu_props = cp.cuda.runtime.getDeviceProperties(0)
gpu_name = gpu_props['name'].decode('utf-8').replace(" ", "_").replace(".", "")
current_directory = os.path.dirname(__file__)
save_destination = os.path.join(current_directory, "results", gpu_name)
os.makedirs(save_destination, exist_ok=True)  # Ensure the directory exists, create if necessary
csv_file_path = os.path.join(save_destination, "FFT1D_CuPy.csv")

# Open a CSV file in write mode
with open(csv_file_path, mode='w', newline='') as csv_file:
    # Create a CSV writer object
    writer = csv.writer(csv_file)
    
    # Write the header row
    writer.writerow(['Size','Execution Time (s)'])
    
    no_of_runs = 200
    
    Benchmark_Params = [
        {"Size": 1024, "Iteration": no_of_runs},
        {"Size": 2048, "Iteration": no_of_runs},
        {"Size": 4096, "Iteration": no_of_runs},
        {"Size": 8192, "Iteration": no_of_runs},
        {"Size": 16384, "Iteration": no_of_runs},
        {"Size": 32768, "Iteration": no_of_runs},
        {"Size": 65536, "Iteration": no_of_runs},
        {"Size": 131072, "Iteration": no_of_runs},
        {"Size": 262144, "Iteration": no_of_runs},
        {"Size": 524288, "Iteration": no_of_runs},
        {"Size": 1048576, "Iteration": no_of_runs},
        {"Size": 2097152, "Iteration": no_of_runs},
        {"Size": 4194304, "Iteration": no_of_runs},
        {"Size": 8388608, "Iteration": no_of_runs},
        {"Size": 16777216, "Iteration": no_of_runs},
        {"Size": 33554432, "Iteration": no_of_runs},
        {"Size": 67108864, "Iteration": no_of_runs}
    ]
    
    
    for j in range(len(Benchmark_Params)):
        # Generate random batch of 2D images and kernels
        Iteration = Benchmark_Params[j]["Iteration"]
        Size = Benchmark_Params[j]["Size"]
        real_parts = np.random.rand( Size).astype('float32')
        imaginary_parts  = np.random.rand( Size).astype('float32')
        
        Signal_np =  real_parts + 1j * imaginary_parts
        
        
        warmup_iterations = 5
        dt_list = []
        cp.cuda.Device(0).synchronize()
        
        for i in range(Iteration):
            start_iter = time.perf_counter_ns()
            ###########################
            Signal_cp = cp.asarray(Signal_np)
            out = cp.fft.fft(Signal_cp)
            fftnp = cp.asnumpy(out)
            ###########################
            end_iter = time.perf_counter_ns()
            
            dt_list.append((end_iter - start_iter)*1e-9)
       # print(f"{dt_list}")
        # Remove warm-up iterations from the front
        print (len(dt_list[warmup_iterations:]))
        dt = np.median(dt_list[warmup_iterations:])
        writer.writerow([Size, dt])

        print(f"{Size:>7} - {dt:8.8f} s")       
        cp.get_default_memory_pool().free_all_blocks()
        cp.get_default_pinned_memory_pool().free_all_blocks()



