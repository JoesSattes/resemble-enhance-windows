@echo off

python -m venv venv
call venv/scripts/activate

pip install -r requirements.txt
pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118

@echo Instaling deepspeed for python 3.10.x and CUDA 11.8
pip install deepspeed/deepspeed-0.11.2+cuda118-cp310-cp310-win_amd64.whl

@echo Install complete
pause