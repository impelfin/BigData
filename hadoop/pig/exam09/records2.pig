-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/class/A';

B = GROUP A BY SIZE($1);
DUMP B;
