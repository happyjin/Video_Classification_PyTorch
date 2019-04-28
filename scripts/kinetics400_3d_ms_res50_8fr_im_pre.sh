# CUDA_LAUNCH_BLOCKING=1 \
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
python main.py \
kinetics400 \
data/kinetics400/kinetics_train_list.txt \
data/kinetics400/kinetics_val_list.txt \
--arch ms_resnet50_3d_8fr \
--dro 0.2 \
--mode 3D \
--t_length 8 \
--t_stride 8 \
--pretrained \
--epochs 110 \
--batch-size 80 \
--lr 0.001 \
--lr_steps 60 90 100 \
--workers 32 \
