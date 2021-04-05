-- max_temp.pig: Finds the maximum temperature by year
records = LOAD '/input/pig/sample.txt';
DESCRIBE records;
