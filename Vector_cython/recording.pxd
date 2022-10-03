# distutils: language = c++
# cython: language_level=3, boundscheck=False, wraparound=False
from libcpp.vector cimport vector

cdef record_data(vector[vector[int]] pos_rec, int minute, int second)