from main_function import functions


class random_walk(functions):
    def __init__(self):
        functions.__init__(self)

    def loop(self):
        for _ in range(self.init_value.total_steps):
            self.function_loop()

    def end(self):
        print("Recording")
        self.end_of_loop()
        print("Finished: " + str(self.minute) + " min " + str(self.second) + " sec")

    def start(self):
        print("Calculation start")
        self.start_setting()
        print("Loop start")
        self.loop()
        self.end()


if __name__ == "__main__":
    rw_class = random_walk()
    rw_class.start()
