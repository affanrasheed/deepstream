#!/bin/sh

echo "==================================================================="
echo "begin downloading GestureNet model "
echo "==================================================================="
cd -
mkdir -p ./models/gesture
cd ./models/gesture
wget https://api.ngc.nvidia.com/v2/models/nvidia/tao/gesturenet/versions/deployable_v2.0.2/files/model.etlt -O gesture.etlt
wget https://api.ngc.nvidia.com/v2/models/nvidia/tao/gesturenet/versions/deployable_v2.0.2/files/int8_calibration.txt -O int8_calibration.txt

echo "==================================================================="
echo "begin downloading BodyPose2d model "
echo "==================================================================="
cd -
mkdir -p ./models/bodypose2d
cd ./models/bodypose2d
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/bodyposenet/versions/deployable_v1.0.1/zip -O bodyposenet_deployable_v1.0.1.zip
unzip -o bodyposenet_deployable_v1.0.1.zip
rm bodyposenet_deployable_v1.0.1.zip


echo "==================================================================="
echo "Download models successfully "
echo "==================================================================="
