#!python3.12
# cython: language_level=3, boundscheck=False, wraparound=False

from main_function cimport functions

cdef class random_walk(functions):
    cdef end(self)
    cdef start(self)

cdef random_walk rw_class