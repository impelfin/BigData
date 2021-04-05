-- max_temp.pig: Finds the maximum temperature by year
A = LOAD '/input/pig/join/A'
  AS(no:int, name:chararray);
B = LOAD '/input/pig/join/B'
  AS(name:chararray, no:int);

G = COGROUP A BY $0 INNER, B BY $1 INNER;

H = FOREACH G GENERATE FLATTEN($1), FLATTEN($2);
DUMP H;
