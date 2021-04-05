A = LOAD '/input/pig/A';

C = STREAM A THROUGH `cut -f 2`; 
DUMP C;
