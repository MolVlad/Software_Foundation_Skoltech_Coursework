# Disclaimer
This repository is not an original official implementation of the work, but a refactored codebase. Performed within the FSE course at Skoltech.
# Quick start  
Follow this quick start instructions step by step in order to download, build and run code inside docker containers:

* ```make hub_download``` - download data
* ```make hub_prepare``` - prepare data
* ```make hub_train``` - train net
* ```make hub_eval``` - evaluate net 
* ```make hub_lint``` - lint all ```.py``` files in repo  

# Development instructions
* In order to change run configuration of prepare, train and test, you should change the following flags inside Makefile: ```PREPARE_FLAGS```, ```TRAIN_FLAGS``` and ```TEST_FLAGS```.
* ```DATA_DIR``` variable in Makefile defines the directory that is used for storing the data.
* In order to use additional libraries during train, test and steps, you should add them to the variable ```REQ``` in ```setup.py``` files in the repositories ```docker/train```, ```docker/eval``` and ```docker/prepare```.
* If you want to add tests of the particular functionality of ```prepare.py / train.py / test.py``` you need to add your test cases in ```unit_test.py``` file that correspons to the ```.py``` file whom functionality you would like to check.
* Note that in current solution tests run simultaneously with the docker container running.  
