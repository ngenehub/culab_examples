@echo off
REM Activate conda environment
call conda activate cupy_env

REM Get the folder where the BAT file is located
set SCRIPT_DIR=%~dp0

REM Loop through all Python files in this folder
for %%f in ("%SCRIPT_DIR%*.py") do (
    echo Running: %%f
    python "%%f"
    echo ------------------------------------
)

echo All Python files executed.
pause
