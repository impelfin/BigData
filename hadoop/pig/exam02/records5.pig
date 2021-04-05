-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt';
projected_records = FOREACH records GENERATE $0, $1, $2;
DUMP projected_records;
DESCRIBE projected_records;
