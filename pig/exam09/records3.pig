-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/class/A';

C = GROUP A ALL;
DUMP C;
