# cython: language_level=3, boundscheck=False, wraparound=False

cdef class Params:
    cdef public int cell_size_xy
    cdef public dict probabilities
    cdef public int total_steps
    cdef public int print_per