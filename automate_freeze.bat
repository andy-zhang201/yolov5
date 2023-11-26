ECHO OFF
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 16 --epochs 50 --save-period 5 --name freeze_batch_16 --freeze 10 --project runs/train/from_frozen_layers --cache disk
if NOT errorlevel == 0 PAUSE
ECHO Start second training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 32 --epochs 50 --save-period 5 --freeze 10 --name freeze_batch_32 --project runs/train/from_frozen_layers
if NOT errorlevel == 0 PAUSE
ECHO Start third training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --freeze 10 --name freeze_batch_64 --project runs/train/from_frozen_layers
ECHO Start second Adam training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 16 --epochs 50 --save-period 5 --name adams_16_model --project runs/train/from_frozen_layers --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam --freeze 10
ECHO Start third Adams training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 32 --epochs 50 --save-period 5 --name adams_32_model --project runs/train/from_frozen_layers --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam --freeze 10
ECHO Start fourth Adams training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name adams_64_model --project runs/train/from_frozen_layers --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam --freeze 10
ECHO Finish training runs
PAUSE