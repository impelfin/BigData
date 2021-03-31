-- max_temp_param.pig
records = LOAD '$input' AS (year:chararray, temperature:int, quality:int);

filtered_records = FILTER records BY temperature != 9999 AND
  quality IN (0, 1, 4, 5, 9);

grouped_records = GROUP filtered_records BY year;

max_temp = FOREACH grouped_records GENERATE group,
  MAX(filtered_records.temperature);

%default TS `date +%Y%m%d-%H%M%S`

STORE max_temp into '/output/pig_$TS';
