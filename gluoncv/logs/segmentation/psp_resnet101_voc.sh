# First finetuning COCO dataset pretrained model on augmented set
# If you would like to train from scratch on COCO, please see psp_resnet101_coco.sh
CUDA_VISIBLE_DEVICES=0,1,2,3 python train.py --dataset pascal_aug --model-zoo psp_resnet101_coco --aux --lr 0.001 --syncbn --ngpus 4 --checkname res101
# Finetuning on original set
CUDA_VISIBLE_DEVICES=0,1,2,3 python train.py --dataset pascal_voc --model psp --aux --backbone resnet101 --lr 0.0001 --syncbn --ngpus 4 --checkname res101 --resume runs/pascal_aug/psp/res101/checkpoint.params
