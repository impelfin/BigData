-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt'
  AS (year:chararray, temperature:int, quality:int);

filtered_records = FILTER records BY temperature != 9999 AND
  quality IN (0, 1, 4, 5, 9);
DUMP filtered_records;
