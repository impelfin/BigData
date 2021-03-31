-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/union/A';
B = LOAD '/input/pig/union/B';

C = UNION A, B;
DUMP C;
