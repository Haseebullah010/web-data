python3 train_ssd.py --gpus 0,1,2,3 -j 32 --network mobilenet1.0 --data-shape 512 --dataset coco --lr 0.001 --lr-decay-epoch 160,200 --lr-decay 0.1 --epochs 240
