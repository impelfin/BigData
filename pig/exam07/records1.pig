-- max_temp.pig: Finds the maximum temperature by year
DEFINE is_good_quality `is_good_quality.py`
  SHIP('./is_good_quality.py');

records = LOAD '/input/pig/sample.txt'
  AS (year:chararray, temperature:int, quality:int);

filtered_records = STREAM records THROUGH is_good_quality 
  AS(year:chararray, temperature:int);

grouped_records = GROUP filtered_records BY year;

max_temp = FOREACH grouped_records GENERATE group,
  MAX(filtered_records.temperature);
DUMP max_temp;
