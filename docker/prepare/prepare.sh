#! /bin/bash
python2 unit_test.py
mkdir -p data/scannetv2
python2 prepare_2d_data.py $PREPARE_FLAGS

