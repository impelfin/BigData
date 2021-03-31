-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/join/A'
  AS(no:int, name:chararray);
B = LOAD '/input/pig/join/B'
  AS(name:chararray, no:int);

C = JOIN A BY $0 LEFT OUTER, B BY $1;
DUMP C;
