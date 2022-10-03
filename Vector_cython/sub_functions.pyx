# distutils: language = c++
# cython: language_level=3, boundscheck=False, wraparound=False

from libcpp.vector cimport vector
from libc.stdlib cimport rand, RAND_MAX


cdef vector[vector[int]] pos_rec_lattice(int cell_size):
    cdef vector[vector[int]] pos_rec
    pos_rec = [[0 for _ in range(cell_size)] for _ in range(cell_size)]
    return pos_rec


cdef vector[int] choice_event(double up, double left, double down):
    cdef double random_val
    random_val = rand()/RAND_MAX
    if random_val <= up:
        return [0, -1]
    elif random_val <= left:
        return [-1, 0]
    elif random_val <= down:
        return [0, 1]
    else:
        return [1, 0]
