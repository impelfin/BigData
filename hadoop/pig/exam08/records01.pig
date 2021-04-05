-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/join/A';
DUMP A;

B = LOAD '/input/pig/join/B';
DUMP B;
