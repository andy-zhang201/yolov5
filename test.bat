ECHO OFF

ECHO Start first testing run
python val.py --data UAVDT.yaml --weights runs\train\adams_16_model\weights\best.pt --batch-size 16 --img 640 --task test --name test-adams-16  --project runs/test 

ECHO Start second testing run
python val.py --data UAVDT.yaml --weights runs\train\adams_32_model\weights\best.pt --batch-size 32 --img 640 --task test --name test-adams-32  --project runs/test 

ECHO Start third testing run
python val.py --data UAVDT.yaml --weights runs\train\adams_64_model\weights\best.pt --batch-size 64 --img 640 --task test --name test-adams-64  --project runs/test 

ECHO Start fourth training run
python val.py --data UAVDT.yaml --weights runs\train\adams_128_model\weights\best.pt --batch-size 128 --img 640 --task test --name test-adams-128  --project runs/test 

ECHO Start fifth training run
python val.py --data UAVDT.yaml --weights runs\train\rotation_15_model\weights\best.pt --batch-size 64 --img 640 --task test --name test-rotation-15  --project runs/test 

ECHO Start sixth training run
python val.py --data UAVDT.yaml --weights runs\train\rotation_30_model\weights\best.pt --batch-size 64 --img 640 --task test --name test-rotation-30  --project runs/test 

ECHO Start seventh training run
python val.py --data UAVDT.yaml --weights runs\train\rotation_45_model\weights\best.pt --batch-size 64 --img 640 --task test --name test-rotation-45  --project runs/test 

PAUSE