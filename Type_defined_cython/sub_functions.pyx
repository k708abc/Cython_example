import random


cpdef list pos_rec_lattice(int cell_size):
    cdef list pos_rec
    pos_rec = [[0 for _ in range(cell_size)] for _ in range(cell_size)]
    return pos_rec


cpdef list choice_event(double up, double left, double down):
    cdef double random_val
    random_val = random.random()
    if random_val <= up:
        return [0, -1]
    elif random_val <= left:
        return [-1, 0]
    elif random_val <= down:
        return [0, 1]
    else:
        return [1, 0]
