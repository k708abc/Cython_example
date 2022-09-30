import seaborn as sns
import matplotlib.pyplot as plt


def record_data(pos_rec):
    plt.figure()
    sns.heatmap(pos_rec)
    plt.savefig("Record/heat_map.png")
