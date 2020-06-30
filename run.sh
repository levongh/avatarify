#!/usr/bin/env bash

#set -x

#source scripts/settings.sh
CONDA_ENV_NAME=avatarify

#bash scripts/create_virtual_camera.sh

source $(conda info --base)/etc/profile.d/conda.sh
conda activate $CONDA_ENV_NAME

#CONFIG=fomm/config/vox-adv-256.yaml
#CKPT=vox-adv-cpk.pth.tar

export PYTHONPATH=$PYTHONPATH:$(pwd)/fomm

python cam_fomm.py $@
