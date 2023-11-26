ECHO OFF
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch -1 --epochs 50 --save-period 5 --name max_batch_all_model --cache disk
if NOT errorlevel == 0 PAUSE
ECHO Start second training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 32 --epochs 50 --save-period 5 --name batch_32_all_model
if NOT errorlevel == 0 PAUSE
ECHO Start third training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name batch_64_all_model
ECHO Finish training runs
PAUSE