
import unittest

class TestEval(unittest.TestCase):

    def test_import_future(self):
        import future
    def test_import_certifi(self):
       import certifi
    def test_import_numpy(self):
        import numpy
    def test_import_torch(self):
        import torch
    def test_import_torchvision(self):
        import torchvision
    def test_import_torchnet(self):
        import torchnet
    def test_import_h5py(self):
       import h5py
if __name__ == '__main__':
    unittest.main()
                                
