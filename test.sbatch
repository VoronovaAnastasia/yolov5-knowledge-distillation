#!/bin/bash
#SBATCH --job-name=studentrv
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-50:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
#SBATCH --output=student_right_val.out 
module load CUDA/11.4
source activate diploma2
srun python3 train.py --img 1280 --batch 16 --epochs 160 --data data/LLVIP.yaml --cfg yolov5s.yaml --weights '' --teacher_weight /home/avvoronova/diploma/LLVIP/yolov5/runs/train/model_s_2/weights/best.pt  --name student_right_val --device 0
