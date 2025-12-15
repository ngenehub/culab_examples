import cupy as cp
import numpy as np
import csv
import os
import time
import matplotlib.pyplot as plt

# ==========================================================
# Your Mandelbrot Function
# ==========================================================
def center_width_to_start_end(center, width):
    start = center - width / 2.0
    end   = center + width / 2.0
    return start, end


def mandelbrot_labview_style(center_x, center_y,
                             zoom_w, zoom_h,
                             res_x, res_y,
                             max_iter,
                             bound=2.0,
                             debug=False):

    x_start, x_end = center_width_to_start_end(center_x, zoom_w)
    y_start, y_end = center_width_to_start_end(center_y, zoom_h)

    X_ramp_np = np.linspace(x_start, x_end, res_x, dtype=np.float64)
    Y_ramp_np = np.linspace(y_start, y_end, res_y, dtype=np.float64)

    X_ramp = cp.asarray(X_ramp_np)
    Y_ramp = cp.asarray(Y_ramp_np)

    X, Y = cp.meshgrid(X_ramp, Y_ramp)
    C = (X + 1j * Y).astype(cp.complex128)

    Z = cp.zeros_like(C, dtype=cp.complex128)
    inside = cp.zeros(C.shape, dtype=cp.bool_)
    cp.cuda.runtime.deviceSynchronize()
    
    t0 = time.perf_counter_ns()
    I = cp.zeros(C.shape, dtype=cp.int16)

    bound = float(bound)

    for i in range(int(max_iter)):
        Z = Z * Z + C
        ZCFloat = Z.astype(cp.complex64)
        mag = cp.sqrt(ZCFloat.real * ZCFloat.real + ZCFloat.imag * ZCFloat.imag)

        escape = mag > bound
        not_inside = cp.logical_not(inside)
        new_escape = cp.logical_and(not_inside, escape)
        inside = cp.logical_or(inside, escape)

        I += new_escape.astype(cp.int16) * i


    Plot =I.get()
    t1 = time.perf_counter_ns()
    elapsed_ms = ((t1 - t0)* 1e-9)
    print(elapsed_ms)
    return Plot, elapsed_ms



# ==========================================================
# Benchmarking
# ==========================================================
gpu_props = cp.cuda.runtime.getDeviceProperties(0)
gpu_name = gpu_props["name"].decode("utf-8").replace(" ", "_").replace(".", "")
current_directory = os.path.dirname(__file__)
save_destination = os.path.join(current_directory, "results", gpu_name)
os.makedirs(save_destination, exist_ok=True)

csv_file_path = os.path.join(save_destination, "Mandelbrot_CuPy.csv")

Benchmark_Params = [
    {"res": 100, "Iteration": 1000},
    {"res": 200, "Iteration": 1000},
    {"res": 300, "Iteration": 1000},
    {"res": 400, "Iteration": 1000},
    {"res": 500, "Iteration": 1000},
    {"res": 600, "Iteration": 1000},
    {"res": 700, "Iteration": 1000},    
    {"res": 800, "Iteration": 1000},
    {"res": 900, "Iteration": 1000},
    {"res": 1000, "Iteration": 1000}
    
]


with open(csv_file_path, mode="w", newline="") as csv_file:

    writer = csv.writer(csv_file)
    writer.writerow(["Resolution", "Time"])

    for params in Benchmark_Params:

        res      = params["res"]
        max_iter = params["Iteration"]

        print(f"\nRunning Mandelbrot → res={res}, max_iter={max_iter}")

        # -------- Run Mandelbrot ---------
        img, elapsed = mandelbrot_labview_style(
            center_x = -0.743643887037151,
            center_y = 0.13182590420533,
            zoom_w   = 0.001,
            zoom_h   = 0.001,
            res_x    = res,
            res_y    = res,
            max_iter = max_iter,
            bound    = 2.0
        )

        writer.writerow([res, elapsed])
        print(f"Completed → {elapsed:.3f} s")

        # -------- SHOW IMAGE FOR EACH BENCHMARK RUN ---------
        plt.figure(figsize=(7,7))
        plt.imshow(img, cmap="rainbow", origin="lower")
        plt.title(f"Mandelbrot {res}x{res}, Iter={max_iter}, Time={elapsed:.1f}")
        # plt.axis("off")
        # plt.tight_layout()
        # plt.show()
        
        plt.show(block=False)   # do not block script
        plt.pause(2)          # let Qt update the window
        plt.close()             # close immediately


        # -------- GPU MEMORY CLEANUP ---------
        cp.get_default_memory_pool().free_all_blocks()
        cp.get_default_pinned_memory_pool().free_all_blocks()
  
        
