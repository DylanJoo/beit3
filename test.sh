# python -m torch.distributed.launch --nproc_per_node=1 run_beit3_finetuning.py \
python run_beit3_finetuning.py \
        --model beit3_base_patch16_480 \
        --input_size 480 \
        --task vqav2 \
        --batch_size 2 \
        --layer_decay 1.0 \
        --lr 3e-5 \
        --update_freq 1 \
        --randaug \
        --epochs 10 \
        --warmup_epochs 1 \
        --drop_path 0.1 \
        --sentencepiece_model beit3.spm \
        --finetune /checkpoint/beit3_base_patch16_224.pth \
        --data_path data/vqa/ \
        --output_dir models \
        --log_dir log \
        --weight_decay 0.01 \
        --seed 42 \
        --save_ckpt_freq 5 \
        --task_head_lr_weight 20 \
        --opt_betas 0.9 0.98 \
        --enable_deepspeed
