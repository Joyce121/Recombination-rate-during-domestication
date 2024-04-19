#!/bin/bash

# 指定文件路径
file_path="WL.nsl.out.50kb.windows.sort"

# 统计文件行数
line_count=$(wc -l < "$file_path")

# 计算并输出结果到新文件
tail -n $(echo "$line_count * 0.005" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_0.5%
tail -n $(echo "$line_count * 0.01" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_1%
tail -n $(echo "$line_count * 0.02" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_2%
tail -n $(echo "$line_count * 0.05" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_5%
tail -n $(echo "$line_count * 0.1" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_10%

