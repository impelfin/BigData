A = LOAD '/input/pig/A';

B = FOREACH A GENERATE $0, $2+1, 'Constant';
DUMP B;
