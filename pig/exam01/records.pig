-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt'
  AS (year:chararray, temperature:int, quality:int);
DUMP records;

DESCRIBE records;
