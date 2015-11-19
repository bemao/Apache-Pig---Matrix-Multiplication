# Apache-Pig---Matrix-Multiplication
A Pig script for implementing matrix multiplication in Apache Pig

Given matrices A, B, this script produces the matrix A*B.

Matrices are assumed to have the form (row_num, col_num, value).
e.g. matrix A = [[1,2],[3,2]] would be coded as:

0,0,1 <br>
0,1,2 <br>
1,0,3 <br>
1,1,2 <br>

It is unimportant whether or not matrices are indexed beginning from 0 or 1, just so long as both A and B are consistent. 
