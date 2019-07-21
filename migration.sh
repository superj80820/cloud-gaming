#!/bin/bash

Taiwan(){
    zone="asia-east1-a"
    GPU="nvidia-tesla-p100"
}

Japan(){
    zone="asia-northeast1-a"
    GPU="nvidia-tesla-t4"
}

Singapore(){
    zone="asia-southeast1-b"
    GPU="nvidia-tesla-p4"
}

echo "Please select your favorite zone"
zones="Taiwan Japan Singapore"

select zone in $zones:
do
    case $REPLY in
        1)
            echo $REPLY
            Taiwan
            break
        ;;
        2)
            Japan
            break
        ;;
        3)
            Singapore
            break
        ;;
        *)
            echo "Please choose 1-3"
        ;;
    esac
done

echo "==============================="
echo $zone
echo $GPU
echo "==============================="

# Migrate instance
gcloud compute instances create gaming-instance \
    --zone=$zone \
    --machine-type=n1-standard-4 \
    --maintenance-policy=TERMINATE \
    --accelerator=type=$GPU,count=1 \
    --tags=gaming-instance,http-server,https-server \
    --preemptible \
    --disk=name=gaming-instance,device-name=gaming-instance,mode=rw,boot=yes