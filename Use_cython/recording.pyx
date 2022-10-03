import seaborn as sns
import matplotlib.pyplot as plt


def record_data(pos_rec, minute, second):
    plt.figure()
    sns.heatmap(pos_rec)
    plt.savefig("Record/heat_map.png")
    #
    file_data = open("Record/execution_time.txt", "a")
    file_data.write(str(minute) + " min " + str(second) + " sec" "\n")
    file_data.close()