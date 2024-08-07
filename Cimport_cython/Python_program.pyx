# cython: language_level=3, boundscheck=False, wraparound=False

from main_function cimport functions


cdef class random_walk(functions):
    def __init__(self):
        functions.__init__(self)

    cdef end(self):
        print("Recording")
        self.end_of_loop()

    cdef start(self):
        print("Calculation start")
        self.start_setting()
        print("Loop start")
        self.loop()
        self.end()


if __name__ == "__main__":
    rw_class = random_walk()
    rw_class.start()
