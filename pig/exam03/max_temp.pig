-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample_corrupt.txt'
  AS (year:chararray, temperature:int, quality:int);
DUMP records;

filtered_records = FILTER records BY temperature != 9999 AND
  quality IN (0, 1, 4, 5, 9);

grouped_records = GROUP filtered_records BY year;

max_temp = FOREACH grouped_records GENERATE group,
  MAX(filtered_records.temperature);
DUMP max_temp;
