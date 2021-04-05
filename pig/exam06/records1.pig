A = LOAD '/input/pig/A';

STORE A INTO 'out' USING PigStorage(':');
cat out
