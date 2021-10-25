from setuptools import setup

REQ = ['future', 'certifi', 'numpy','torch==0.4', 'torchvision==0.2.2', 'torchnet', 'h5py']

setup(
        setup_requires = REQ,
        install_requires = REQ)
