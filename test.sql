CREATE TABLE tbl1 (
f1 varchar(30) primary key,
f2 text,
f3 DATE);

.separator ,
.import file1.csv tbl1
