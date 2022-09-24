/* run as; sqlite3 nameofdatabase.db < nameofsqlitefile.sql */

/* output to file */

.separator |
.output 'test_output.txt'
SELECT f1, f3 FROM tbl1
WHERE
DATE(f3) BETWEEN DATE('1989-01-01') AND DATE('1991-01-01');
.exit

/* Importing files as CSV or other formats

Use the ".import" command to import CSV (comma separated value) or similarly delimited data into an SQLite table. The ".import" command takes two arguments which are the source from which data is to be read and the name of the SQLite table into which the data is to be inserted. The source argument is the name of a file to be read or, if it begins with a "|" character, it specifies a command which will be run to produce the input data.

Note that it may be important to set the "mode" before running the ".import" command. This is prudent to prevent the command-line shell from trying to interpret the input file text as some format other than how the file is structured. If the --csv or --ascii options are used, they control import input delimiters. Otherwise, the delimiters are those in effect for the current output mode.

To import into a table not in the "main" schema, the --schema option may be used to specify that the table is in some other schema. This can be useful for ATTACH'ed databases or to import into a TEMP table.

When .import is run, its treatment of the first input row depends upon whether the target table already exists. If it does not exist, the table is automatically created and the content of the first input row is used to set the name of all the columns in the table. In this case, the table data content is taken from the second and subsequent input rows. If the target table already exists, every row of the input, including the first, is taken to be actual data content. If the input file contains an initial row of column labels, you can make the .import command skip that initial row using the "--skip 1" option.

Here is an example usage, loading a pre-existing temporary table from a CSV file which has column names in its first row:

sqlite> .import --csv --skip 1 C:/work/somedata.csv tabl1 */
