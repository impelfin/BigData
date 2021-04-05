-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt'
  AS (year, temperature: int, quality:int);
DUMP records;

DESCRIBE records;
