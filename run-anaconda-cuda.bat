@echo off
REM Activate the 'deeplivecam' conda environment and run GPU mode
call conda activate deeplivecam
python run.py --execution-provider cuda
