# Disclaimer
This repository is not an original official implementation of the work, but a refactored codebase. Performed within the FSE course at Skoltech.
# Quick start  
Follow this quick step instruction in order to download, build and run docker images. These commands will download docker images from docker hub and then will build docker containers and will run them:  

* ```make hub_download``` - download docker image for data downloading
* ```make hub_prepare``` - download docker image for data perparation
* ```make hub_train``` - download docker image for model trainig
* ```make hub_eval``` - download doker images for model testing 
* ```make hub_lint``` - download docker image for ```.py``` files linting  

# Development 
* ```TRAIN_FLAGS```and```TEST_FLAGS``` are the flags for proper running train.py and test.py respectively. You
* If you want to add another modules to ```prepare.py / train.py / test.py```you need to change the variable REQ by appending your module in this manner: 'module_name' in setup.py which corresponds to ```.py``` file that you want to change.
* If you want to add tests of the particular functionality of ```prepare.py / train.py / test.py``` you need to add your test cases in ```unit_test.py``` file that correspons to the ```.py``` file whom functionality you would like to check.
* Note that in current solution tests run simultaneously with the docker container running.  
# Credits
## Citation:  
If you find our work useful in your research, please consider citing:
```
@inproceedings{dai20183dmv,
 author = {Dai, Angela and Nie{\ss}ner, Matthias},
 booktitle = {Proceedings of the European Conference on Computer Vision ({ECCV})},
 title = {3DMV: Joint 3D-Multi-View Prediction for 3D Semantic Scene Segmentation},
 year = {2018}
}
```

## Contact:
If you have any questions, please email Angela Dai at adai@cs.stanford.edu.


