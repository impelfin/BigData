-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample_corrupt.txt'
  AS (year:chararray, temperature:int, quality:int);

corrupt_records = FILTER records BY temperature is null;

grouped = GROUP corrupt_records ALL;
all_grouped = FOREACH grouped GENERATE group, COUNT(corrupt_records);
DUMP all_grouped;
