-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/union/A'
  AS(f0:int, f1:int);

B = LOAD '/input/pig/union/B'
  AS(f0:chararray, f1:chararray, f2:int);

C = UNION A, B;

DESCRIBE A;
DESCRIBE B;
DESCRIBE C;
