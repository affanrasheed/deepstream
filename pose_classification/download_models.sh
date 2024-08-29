#!/bin/sh

echo "==================================================================="
echo "begin downloading BodyPose3DNet model "
echo "==================================================================="
cd -
mkdir -p ./models/bodypose3dnet
cd ./models/bodypose3dnet
wget https://api.ngc.nvidia.com/v2/models/nvidia/tao/bodypose3dnet/versions/deployable_accuracy_v1.0/files/bodypose3dnet_accuracy.etlt

echo "==================================================================="
echo "begin downloading poseclassificationnet model "
echo "==================================================================="
cd -
mkdir -p ./models/poseclassificationnet
cd ./models/poseclassificationnet
wget --content-disposition 'https://api.ngc.nvidia.com/v2/models/org/nvidia/team/tao/poseclassificationnet/deployable_onnx_v1.0/files?redirect=true&path=st-gcn_3dbp_nvidia.onnx' -O st-gcn_3dbp_nvidia.onnx

echo "==================================================================="
echo "Download models successfully "
echo "==================================================================="
