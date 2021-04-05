-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/join/A';
B = LOAD '/input/pig/join/B';

C = JOIN A BY $0, B BY $1 USING 'replicated';
DUMP C;
