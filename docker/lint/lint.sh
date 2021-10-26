#!/bin/bash

cd lint

pylint 3dmv/*.py prepare_data/*.py | tee initial_summary.txt
yapf -i 3dmv/*.py prepare_data/*.py
pylint 3dmv/*.py prepare_data/*.py | tee final_summary.txt

