CUDA_VISIBLE_DEVICES=0 OMP_NUM_THREADS=4 ns-train neus-facto-angelo \
    --trainer.load-dir outputs/ngp-best-nema-500m-f4-l1-novani/neus-facto-angelo/2024-03-12_072009/sdfstudio_models \
    --trainer.max-num-iterations 200001  --trainer.steps_per_save 1000\
    --pipeline.model.sdf-field.inside-outside True     \
    --pipeline.model.sdf-field.num-layers 2     \
    --pipeline.model.sdf-field.hidden-dim 64     \
    --pipeline.model.sdf-field.geo-feat-dim 64     \
    --pipeline.model.sdf-field.num-layers-color 2     \
    --pipeline.model.sdf-field.log2-hashmap-size 22\
    --pipeline.model.sdf-field.hash-features-per-level 4\
    --pipeline.model.sdf-field.base-res 16\
    --pipeline.model.sdf-field.max-res 2048\
    --pipeline.model.enable-progressive-hash-encoding False\
    --pipeline.model.sdf-field.use-appearance-embedding True\
    --pipeline.model.sdf-field.use-position-encoding True\
    --pipeline.model.sdf-field.vanilla-ngp False\
    --pipeline.model.sdf-field.geometric-init True\
    --pipeline.model.sdf-field.bias 0.8\
    --pipeline.model.sdf-field.fix-geonet False\
    --pipeline.model.background-model none\
    --pipeline.datamanager.train_num_images_to_sample_from -1\
    --pipeline.datamanager.train_num_times_to_repeat_images -1\
    --pipeline.datamanager.eval_num_images_to_sample_from 8 --vis tensorboard\
    --experiment-name sdf-novani-ft     sdfstudio-data \
    --data /home/fangyin/data/scannetpp/785e7504b9/dslr/sdfstudio
    #--pipeline.model.steps-per-level 800\
CUDA_VISIBLE_DEVICES=0 OMP_NUM_THREADS=4 ns-train neus-facto-angelo \
    --trainer.load-dir outputs/ngp-best-nema-500m-f4-l1-novani/neus-facto-angelo/2024-03-12_072009/sdfstudio_models \
    --trainer.max-num-iterations 200001  --trainer.steps_per_save 1000\
    --pipeline.model.sdf-field.inside-outside True     \
    --pipeline.model.sdf-field.num-layers 2     \
    --pipeline.model.sdf-field.hidden-dim 64     \
    --pipeline.model.sdf-field.geo-feat-dim 64     \
    --pipeline.model.sdf-field.num-layers-color 2     \
    --pipeline.model.sdf-field.log2-hashmap-size 22\
    --pipeline.model.sdf-field.hash-features-per-level 4\
    --pipeline.model.sdf-field.base-res 16\
    --pipeline.model.sdf-field.max-res 2048\
    --pipeline.model.enable-progressive-hash-encoding False\
    --pipeline.model.sdf-field.use-appearance-embedding True\
    --pipeline.model.sdf-field.use-position-encoding True\
    --pipeline.model.sdf-field.vanilla-ngp False\
    --pipeline.model.sdf-field.geometric-init True\
    --pipeline.model.sdf-field.bias 0.8\
    --pipeline.model.sdf-field.fix-geonet True\
    --pipeline.model.background-model none\
    --pipeline.datamanager.train_num_images_to_sample_from -1\
    --pipeline.datamanager.train_num_times_to_repeat_images -1\
    --pipeline.datamanager.eval_num_images_to_sample_from 8 --vis tensorboard\
    --experiment-name sdf-novani-fix     sdfstudio-data \
    --data /home/fangyin/data/scannetpp/785e7504b9/dslr/sdfstudio
CUDA_VISIBLE_DEVICES=0 OMP_NUM_THREADS=4 ns-train neus-facto-angelo \
    --trainer.load-dir outputs/ngp-best-nema-500m-f4-l1/neus-facto-angelo/2024-03-12_051848/sdfstudio_models \
    --trainer.max-num-iterations 200001  --trainer.steps_per_save 1000\
    --pipeline.model.sdf-field.inside-outside True     \
    --pipeline.model.sdf-field.num-layers 2     \
    --pipeline.model.sdf-field.hidden-dim 64     \
    --pipeline.model.sdf-field.geo-feat-dim 64     \
    --pipeline.model.sdf-field.num-layers-color 2     \
    --pipeline.model.sdf-field.log2-hashmap-size 22\
    --pipeline.model.sdf-field.hash-features-per-level 4\
    --pipeline.model.sdf-field.base-res 16\
    --pipeline.model.sdf-field.max-res 2048\
    --pipeline.model.enable-progressive-hash-encoding False\
    --pipeline.model.sdf-field.use-appearance-embedding True\
    --pipeline.model.sdf-field.use-position-encoding True\
    --pipeline.model.sdf-field.vanilla-ngp True\
    --pipeline.model.sdf-field.geometric-init False\
    --pipeline.model.sdf-field.bias 0.8\
    --pipeline.model.sdf-field.fix-geonet False\
    --pipeline.model.background-model none\
    --pipeline.datamanager.train_num_images_to_sample_from -1\
    --pipeline.datamanager.train_num_times_to_repeat_images -1\
    --pipeline.datamanager.eval_num_images_to_sample_from 8 --vis tensorboard\
    --experiment-name sdf-ft   sdfstudio-data \
    --data /home/fangyin/data/scannetpp/785e7504b9/dslr/sdfstudio
    #--trainer.load-dir outputs/ngp_models/785e7504b9 \
    #--include_sdf_samples True
    #--pipeline.model.sparse_points_sdf_loss_mult 1.0\
    #--trainer.load-dir outputs/ngp_models\
    #--trainer.load-dir outputs/neus-facto-angelo-improve/neus-facto-angelo/2023-12-06_075728/sdfstudio_models\
    #--pipeline.model.sdf-field.log2-hashmap-size 18\
    #--pipeline.model.sdf-field.hash-features-per-level 4\
    #--pipeline.model.sdf-field.use-position-encoding True\
