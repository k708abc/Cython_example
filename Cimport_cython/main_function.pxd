# cython: language_level=3, boundscheck=False, wraparound=False

from InputParameter cimport Params

cdef class functions:
    cdef Params init_value
    cdef int cell_size, count, output_count, minute, second
    cdef double start_time, up, left, down, right, elapsed_time
    cdef list dir_rec
    cdef list direction
    cdef list current_position
    cdef list pos_rec
    #
    cpdef start_setting(self)
    cdef probability_set(self)
    cpdef loop(self)
    cdef function_loop(self)
    cdef direction_record(self)
    cdef update_events(self)
    cdef int boundary_check(self, int val)
    cdef record_position(self)
    cpdef end_of_loop(self)