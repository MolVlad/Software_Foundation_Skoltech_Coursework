#!/usr/bin/python3.7

import unittest

class ImportTestCase(unittest.TestCase):

	def test_torch(self):
		import torch

	def test_torch2(self):
		import torch2

if __name__ == '__main__':
	unittest.main()
