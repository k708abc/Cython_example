# cython: language_level=3, boundscheck=False, wraparound=False

cdef list pos_rec_lattice(int cell_size)
cdef list choice_event(double up, double left, double down)