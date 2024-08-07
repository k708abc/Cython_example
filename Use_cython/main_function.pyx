#!python3.12

from InputParameter import Params
import time
from sub_functions import pos_rec_lattice, choice_event
from recording import record_data
import os
import math


class functions:
    def __init__(self):
        self.init_value = Params("input.yml")
        self.cell_size = self.init_value.cell_size_xy
        self.count = 0
        self.output_count = self.init_value.print_per
        self.dir_rec = [0, 0, 0, 0, 0]

    def start_setting(self):
        self.direction = [0, 0]
        self.current_position = [int(self.cell_size / 2), int(self.cell_size / 2)]
        if os.path.exists("Record") is False:
            os.mkdir("Record")
        self.pos_rec = pos_rec_lattice(self.cell_size)
        self.probability_set()
        self.start_time = time.time()

    def probability_set(self):
        self.up = self.init_value.probabilities["up"]
        self.right = self.init_value.probabilities["right"]
        self.down = self.init_value.probabilities["down"]
        self.left = self.init_value.probabilities["left"]
        total = self.up + self.down + self.left + self.right
        self.up = self.up / total
        self.left = self.left / total + self.up
        self.down = self.down / total + self.left
        self.right = self.right / total + self.down

    def loop(self):
        for _ in range(self.init_value.total_steps):
            self.function_loop()

    def function_loop(self):
        self.direction = choice_event(self.up, self.left, self.down)
        self.direction_record()
        self.update_events()
        self.record_position()
        self.count += 1
        if self.count == self.output_count:
            percentage = self.count / self.init_value.total_steps * 100
            print(f"Progress: {percentage:.2f} %")
            self.output_count += self.init_value.print_per

    def direction_record(self):
        if self.direction == [0, -1]:
            self.dir_rec[0] += 1
        elif self.direction == [-1, 0]:
            self.dir_rec[1] += 1
        elif self.direction == [0, 1]:
            self.dir_rec[2] += 1
        elif self.direction == [1, 0]:
            self.dir_rec[3] += 1
        else:
            self.dir_rec[4] += 1

    def update_events(self):
        self.current_position[0] = self.boundary_check(
            self.current_position[0] + self.direction[0]
        )
        self.current_position[1] = self.boundary_check(
            self.current_position[1] + self.direction[1]
        )

    def boundary_check(self, val):
        if val < 0:
            return self.cell_size - 1
        elif val >= self.cell_size:
            return 0
        else:
            return val

    def record_position(self):
        self.pos_rec[self.current_position[0]][self.current_position[1]] += 1

    def end_of_loop(self):
        self.elapsed_time = time.time() - self.start_time
        self.minute = math.floor(self.elapsed_time / 60)
        self.second = int(self.elapsed_time % 60)
        record_data(self.pos_rec, self.minute, self.second)
        print(self.dir_rec)
        print("Finished: " + str(self.minute) + " min " + str(self.second) + " sec")