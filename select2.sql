/* run as; sqlite3 nameofdatabase.db < nameofsqlitefile.sql */

SELECT f1, f3 FROM tbl1
WHERE
DATE(f3) BETWEEN DATE('1989-01-01') AND DATE('1991-01-01');
