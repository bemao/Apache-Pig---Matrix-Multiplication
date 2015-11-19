--This file multiplies mat1*mat2
--The output has the same format as the two input matrices: (row,col,value)

mat1 = LOAD 'matrix1.csv' USING PigStorage(',') AS (row,column,value:int);
mat2 = LOAD 'matrix2.csv' USING PigStorage(',') AS (row,column,value:int);

A = JOIN mat1 BY column FULL OUTER, mat2 BY row;
B = FOREACH A GENERATE mat1::row AS m1r, mat2::column AS m2c, (mat1::value)*(mat2::value) AS value;
C = GROUP B BY (m1r, m2c);

multiplied = FOREACH C GENERATE group.$0 as row, group.$1 as column, SUM(B.value) AS value;

STORE multiplied INTO 'product' USING PigStorage(',');

