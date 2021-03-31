-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/missing_fields';

B = FILTER A BY SIZE(TOTUPLE(*)) > 1;
DUMP B;
