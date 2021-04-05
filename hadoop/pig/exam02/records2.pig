-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt'
  AS (year, temperature, quality);
DUMP records;

DESCRIBE records;
