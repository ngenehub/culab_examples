# -*- coding: utf-8 -*-
import cupy as cp
import numpy as np
from cupyx.scipy.signal import fftconvolve
import time
import os

# ------------------ GLOBAL CONSTANT ------------------
KERNEL_RELATIVE_SIZE = 0.1    # <<<<< Replace this value only
# -----------------------------------------------------

# Input sizes
signal_lengths = [32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608]

batch_size = 200
datatype = 'SGL'  # only for report naming

# Timestamp and GPU name
gpu_props = cp.cuda.runtime.getDeviceProperties(0)
gpu_name = gpu_props["name"].decode("utf-8").replace(" ", "_").replace(".", "")

# Save folder
current_directory = os.path.dirname(__file__)
save_destination = os.path.join(current_directory, "results", gpu_name)
os.makedirs(save_destination, exist_ok=True)

csv_file_path = os.path.join(save_destination, "Conv1D_CuPy.csv"
)

# -------------------------------------------------------------------------
# Frequency-domain 1D convolution (CuPy)
# -------------------------------------------------------------------------
def fft_convolution(signal_np, kernel_cp):
    signal_cp = cp.asarray(signal_np, dtype=cp.float32)
    out_cp = fftconvolve(signal_cp, kernel_cp, mode='full')
    return out_cp.get()

# -------------------------------------------------------------------------
# Benchmark
# -------------------------------------------------------------------------
exec_times = []

for length in signal_lengths:

    # Compute kernel size from relative constant
    kernel_size = max(1, int(length * KERNEL_RELATIVE_SIZE))


    print(f"\n--- Signal: {length}, Kernel: {kernel_size} ---")

    # Generate input
    signal_np = np.random.rand(length).astype('float32')
    kernel_np = np.random.rand(kernel_size).astype('float32')
    kernel_cp = cp.asarray(kernel_np, dtype=cp.float32)

    # Warm-up (very important for FFT)
    for _ in range(5):
        fft_convolution(signal_np, kernel_cp)

    # Timed runs
    dt_list = []
    for _ in range(batch_size):
        t0 = time.perf_counter_ns()
        fft_convolution(signal_np, kernel_cp)
        t1 = time.perf_counter_ns()
        dt_list.append((t1 - t0)* 1e-9)

    dt = np.median(dt_list)
    exec_times.append(dt)

    print(f"Exec time: {dt:.8f} s")

    # Free GPU memory after each test
    cp.get_default_memory_pool().free_all_blocks()
    cp.get_default_pinned_memory_pool().free_all_blocks()

# -------------------------------------------------------------------------
# Save CSV
# -------------------------------------------------------------------------
with open(csv_file_path, mode="w", newline="") as f:
    header = "SignalLength,KernelSize,ExecTime,KERNEL_RELATIVE_SIZE\n"
    f.write(header)

    for length, time_s in zip(signal_lengths, exec_times):
        kernel_size = max(1, int(length * KERNEL_RELATIVE_SIZE))

        f.write(f"{length},{kernel_size},{time_s},{KERNEL_RELATIVE_SIZE}\n")

print(f"\nCSV file created: {csv_file_path}")
