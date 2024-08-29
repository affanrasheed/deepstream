# Pose Classification Using Deepstream on Jetson Orin Nano 8Gb
## Description
The project contains pose classification application built using  Deepstream SDK.

## Model

The TAO pretrained models used in the sample application are:

* [PeopleNet](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/models/peoplenet)  
* [BodyPose3DNet](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/models/bodypose3dnet)  
* [poseclassificationnet](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/models/poseclassificationnet)  
* [tracker model](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/models/reidentificationnet) 

## Prerequisition

* DeepStream SDK 6.2 GA and above

* Install libeigen3-dev
```bash
    $ sudo apt install libeigen3-dev
    $ cd /usr/include
    $ sudo ln -sf eigen3/Eigen Eigen
```
## Download

### 1. Clone Source Code with SSH or HTTPS

```
sudo apt update
sudo apt install git-lfs
git lfs install --skip-repo
cd deepstream/pose_classification
```
### 2. Download Models
Run below script to download models.

```
sudo ./download_models.sh 
```

## Build

### Build Sample Application

```
export CUDA_MODULE_LOADING=LAZY
export CUDA_VER=xy.z                                      // xy.z is CUDA version, e.g. 12.2
make
```
## Run

The application can be run. 

```
cd apps/tao_others/deepstream-pose-classification
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/nvidia/deepstream/deepstream/lib/cvcore_libs
./deepstream-pose-classification deepstream_pose_classification_config.yml
```
## Output
![alt-text](output/output.gif)



