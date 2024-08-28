#!/bin/sh

echo "==================================================================="
echo "begin downloading facial landmarks model "
echo "==================================================================="
cd -
mkdir -p ./models/faciallandmark
cd ./models/faciallandmark
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/fpenet/versions/deployable_v3.0/files/model.etlt -O faciallandmark.etlt
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/fpenet/versions/deployable_v3.0/files/int8_calibration.txt -O fpenet_cal.txt

echo "==================================================================="
echo "begin downloading facenet model "
echo "==================================================================="
cd -
mkdir -p ./models/facenet
cd ./models/facenet
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/facenet/versions/pruned_quantized_v2.0.1/files/model.etlt -O facenet.etlt
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/facenet/versions/pruned_quantized_v2.0.1/files/int8_calibration.txt -O facenet_cal.txt


echo "==================================================================="
echo "Download models successfully "
echo "==================================================================="
