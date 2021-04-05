-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/join/A'
  AS(no:int, name:chararray);
B = LOAD '/input/pig/join/B'
  AS(name:chararray, no:int);

D = COGROUP A BY $0, B BY $1 OUTER;
DUMP D;
