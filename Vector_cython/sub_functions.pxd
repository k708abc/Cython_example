# distutils: language = c++
# cython: language_level=3, boundscheck=False, wraparound=False

from libcpp.vector cimport vector

cdef vector[vector[int]] pos_rec_lattice(int cell_size)
cdef vector[int] choice_event(double up, double left, double down)