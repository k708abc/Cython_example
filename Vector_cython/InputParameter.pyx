﻿# distutils: language = c++
# cython: language_level=3, boundscheck=False, wraparound=False

import yaml

cdef class Params:
    def __init__(self, filename):
        if filename:
            with open(filename) as f:
                input_yaml = yaml.safe_load(f)
            for k, v in input_yaml.items():
                setattr(self, k, v)
