import numpy as np
import pandas as pd

def gini_coefficient(data):
    """
    计算给定数据数组的基尼系数。
    参数:
    data -- numpy数组，其中每行代表一个观测，每列代表一个变量。
    返回:
    numpy数组，包含每列的基尼系数。
    """
    def single_column_gini(column):
        """
        计算一列数据的基尼系数。
        参数:
        column -- numpy数组，包含单变量的数据。
        返回:
        基尼系数。
        """

        sorted_column = np.sort(column)
        n = len(sorted_column)
        cumsum = np.cumsum(sorted_column)
        index = np.arange(1, n + 1)
        return (1 + (1 / n) - 2 * (np.sum(cumsum) / cumsum[-1]) / n)
    return np.apply_along_axis(single_column_gini, axis=0, arr=data)
text_file = '6breed.RR.txt'
data = pd.read_csv(text_file, sep='\t', header=None)
gini_coefficients = gini_coefficient(data.values)
print('基尼系数:', gini_coefficients)
