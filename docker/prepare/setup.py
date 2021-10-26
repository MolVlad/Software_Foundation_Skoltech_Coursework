from setuptools import setup

REQ = ['future', 'certifi', 'numpy','imageio==2.6', 'scikit-image', 'opencv-python==4.2.0.32', 'pypng']

setup(
        setup_requires = REQ,
        install_requires = REQ)
