
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
    def test_GPU_available(self):
        import util

        fx = 577.870605
        fy = 577.870605
        mx = 319.5
        my = 239.5
        proj_image_dims = [41, 32]

        intrinsic_image_width = 640
        intrinsic_image_height = 480

        intrinsic = util.make_intrinsic(fx, fy, mx, my)
        intrinsic = util.adjust_intrinsic(intrinsic, [intrinsic_image_width, intrinsic_image_height], proj_image_dims)
        intrinsic = intrinsic.cuda()

if __name__ == '__main__':
    unittest.main()
                                
