#!/bin/bash

mkdir -p data/scannetv2 data/scannetv2_images

wget http://kaldir.vc.in.tum.de/adai/3DMV/models.zip
unzip models.zip -d data
rm models.zip

wget http://kaldir.vc.in.tum.de/adai/3DMV/data/3dmv_scannet_v2_train.zip
unzip 3dmv_scannet_v2_train.zip -d data/train
rm 3dmv_scannet_v2_train.zip

wget http://kaldir.vc.in.tum.de/adai/3DMV/data/3dmv_scannet_v2_test_scenes.zip
unzip 3dmv_scannet_v2_test_scenes.zip -d data/test
rm 3dmv_scannet_v2_test_scenes.zip

