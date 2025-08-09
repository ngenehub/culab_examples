import cupy as cp
import numpy as np
import time
import csv
import os
from datetime import datetime

# Setup timestamp and GPU name
timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
gpu_props = cp.cuda.runtime.getDeviceProperties(0)
gpu_name = gpu_props['name'].decode('utf-8').replace(" ", "_").replace(".", "")

# Prepare output path and file
current_directory = os.path.dirname(__file__)
save_destination = os.path.join(current_directory, "results", "GEMM")
os.makedirs(save_destination, exist_ok=True)

csv_file_path = os.path.join(save_destination, f"GEMM_CuPY_SGL_{timestamp}_{gpu_name}.csv")

# Open CSV for writing
with open(csv_file_path, mode='w', newline='') as csv_file:
    writer = csv.writer(csv_file)
    writer.writerow(['Size', 'Execution Time (ms)'])
    no_of_runs = 20
    Benchmark_Params = [
        {"Size": 64, "Iteration": no_of_runs},
        {"Size": 128, "Iteration": no_of_runs},
        {"Size": 256, "Iteration": no_of_runs},
        {"Size": 512, "Iteration": no_of_runs},
        {"Size": 1024, "Iteration": no_of_runs},
        {"Size": 2048, "Iteration": no_of_runs},
        {"Size": 4096, "Iteration": no_of_runs},
        {"Size": 8192, "Iteration": no_of_runs}
        ]

    for params in Benchmark_Params:
        Iteration = params["Iteration"]
        Size = params["Size"]
        warmup_iterations = 5
        dt_list = []

        Matrix_A = np.random.rand(Size, Size).astype('float32')
        Matrix_B = np.random.rand(Size, Size).astype('float32')
        outcp = cp.empty_like(Matrix_A)


        print(f"\nStart Calculation for size {Size}x{Size}")

        for i in range(Iteration):
            start_iter = time.perf_counter()
            ###########################
            A_cp = cp.asarray(Matrix_A, dtype=cp.float32)
            B_cp = cp.asarray(Matrix_B, dtype=cp.float32)
            sgemm_result = cp.matmul(A_cp, B_cp).get()
            ###########################
            end_iter = time.perf_counter()
            
            dt_list.append(end_iter - start_iter)
            

        mean_dt = sum(dt_list[warmup_iterations:]) / len(dt_list[warmup_iterations:])
        cupy_exec_time_ms = mean_dt * 1000
        writer.writerow([Size, cupy_exec_time_ms])
        print(f"{Size}x{Size} - {cupy_exec_time_ms:8.8f} ms")  
        
        cp.get_default_memory_pool().free_all_blocks()
        cp.get_default_pinned_memory_pool().free_all_blocks()
