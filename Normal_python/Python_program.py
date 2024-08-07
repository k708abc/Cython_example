#!python3.12
from main_function import functions


class random_walk(functions):
    def __init__(self):
        functions.__init__(self)

    def end(self):
        print("Recording")
        self.end_of_loop()

    def start(self):
        print("Calculation start")
        self.start_setting()
        print("Loop start")
        self.loop()
        self.end()


if __name__ == "__main__":
    """"
    Trying random work by normal Python code
    """
    rw_class = random_walk()
    rw_class.start()
