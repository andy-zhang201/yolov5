ECHO OFF
ECHO Start first Adams training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 128 --epochs 50 --save-period 5 --name adams_128_model --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam --cache disk
ECHO Start second Adam training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 16 --epochs 50 --save-period 5 --name adams_16_model --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam
ECHO Start third Adams training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 32 --epochs 50 --save-period 5 --name adams_32_model --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam
ECHO Start fourth Adams training run
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name adams_64_model --hyp data/hyps/hyp.scratch-low-adams.yaml --optimizer Adam
ECHO Start first rotation hyperparameter training run (45 deg)
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name rotation_45_model --hyp data/hyps/hyp.scratch-low-45-deg.yaml
ECHO Start second rotation hyperparameter training run (30 deg)
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name rotation_30_model --hyp data/hyps/hyp.scratch-low-30-deg.yaml
ECHO Start third rotation hyperparameter training run (15 deg)
python train.py --data UAVDT.yaml --weights yolov5n.pt --img 640 --batch 64 --epochs 50 --save-period 5 --name rotation_15_model --hyp data/hyps/hyp.scratch-low-15-deg.yaml
ECHO Finish training runs
PAUSE