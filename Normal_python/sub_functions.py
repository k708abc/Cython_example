#!python3.12

import random


def pos_rec_lattice(cell_size):
    pos_rec = [[0 for _ in range(cell_size)] for _ in range(cell_size)]
    return pos_rec


def choice_event(up, left, down):
    random_val = random.random()
    if random_val <= up:
        return [0, -1]
    elif random_val <= left:
        return [-1, 0]
    elif random_val <= down:
        return [0, 1]
    else:
        return [1, 0]
