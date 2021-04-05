IMPORT './max_temp.macro';

records = LOAD '/input/pig/sample.txt'
  AS (year:chararray, temperature:int, quality:int);

filtered_records = FILTER records BY temperature != 9999 AND
  quality IN (0, 1, 4, 5, 9);

max_temp = max_by_group(filtered_records, year, temperature);
DUMP max_temp;