#!/bin/bash
file_path="WL.nsl.out.50kb.windows.sort"
line_count=$(wc -l < "$file_path")

tail -n $(echo "$line_count * 0.01" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_1%
tail -n $(echo "$line_count * 0.05" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_5%
tail -n $(echo "$line_count * 0.1" | bc | awk '{printf "%.0f\n", $1}') "$file_path" > WL.nsl.out.50kb.windows.sort_10%

