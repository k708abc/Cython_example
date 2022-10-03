# distutils: language = c++
# cython: language_level=3, boundscheck=False, wraparound=False

import seaborn as sns
import matplotlib.pyplot as plt
from libcpp.vector cimport vector

cdef record_data(vector[vector[int]] pos_rec, int minute, int second):
    plt.figure()
    sns.heatmap(pos_rec)
    plt.savefig("Record/heat_map.png")
    #
    file_data = open("Record/execution_time.txt", "a")
    file_data.write(str(minute) + " min " + str(second) + " sec" "\n")
    file_data.close()