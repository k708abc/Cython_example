#!python3.12
# cython: language_level=3, boundscheck=False, wraparound=False

import yaml


cdef class Params:
    cdef public int cell_size_xy
    cdef public dict probabilities
    cdef public int total_steps
    cdef public int print_per
    def __init__(self, filename):
        if filename:
            with open(filename) as f:
                input_yaml = yaml.safe_load(f)
            for k, v in input_yaml.items():
                setattr(self, k, v)
