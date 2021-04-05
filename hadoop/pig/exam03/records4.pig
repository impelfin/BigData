-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample_corrupt.txt'
  AS (year:chararray, temperature:int, quality:int);

corrupt_records = FILTER records BY temperature is null;

grouped = GROUP corrupt_records ALL;
all_grouped = FOREACH grouped GENERATE group, COUNT(corrupt_records);

SPLIT records INTO good_records IF temperature is not null,
bad_records IF temperature is null;
DUMP good_records;
DUMP bad_records;
