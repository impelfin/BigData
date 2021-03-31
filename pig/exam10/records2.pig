-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/sort/A';

B = ORDER A BY $0, $1 DESC;
DUMP B;
