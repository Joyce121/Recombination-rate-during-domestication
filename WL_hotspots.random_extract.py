import random

def extract_lines(file_path, num_lines, num_iterations):
    with open(file_path, "r") as file:
        lines = file.readlines()

    if num_lines > len(lines):
        num_lines = len(lines)

    for i in range(num_iterations):
        random_lines = random.sample(lines, num_lines)

        with open(f"./WL_hotspots_random/WL_hotspots_random_{i+1}.txt", "w") as output_file:
            output_file.writelines(random_lines)

file_path = "chr1-33.1kb.bed"  
num_lines = 74489
num_iterations = 10000
extract_lines(file_path, num_lines, num_iterations)

