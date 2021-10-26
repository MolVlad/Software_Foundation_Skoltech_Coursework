
import unittest

class TestEval(unittest.TestCase):

    def test_import_future(self):
        import future
    def test_import_certifi(self):
       import certifi
    def test_import_numpy(self):
        import numpy
    def test_import_imageio(self):
        import imageio
    def test_import_skimage(self):
        import skimage
    def test_import_opencv(self):
        import cv2
    def test_import_pypng(self):
       import png

if __name__ == '__main__':
    unittest.main()
                
