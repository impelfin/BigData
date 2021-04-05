IMPORT '/max_temp.macro'

records = LOAD '/input/pig/sample.txt'
  AS (year:chararray, temperature:int, quality:int);

filtered_records = FILTER records BY temperature != 9999 AND
  quality IN (0, 1, 4, 5, 9);

macro_max_by_group_A_0 = GROUP filtered_records by (year);

max_temp = FOREACH macro_max_by_group_A_0 GENERATE group,
	MAX(filtered_records.(temperature));
DUMP max_temp;
