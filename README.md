# pgOpenBeerDB - a PostgreSQL version of OpenBeerDB

pgOpenBeerDB is just a PostgreSQL version of the OpenBeerDB that one can find
at OpenBeerDB.

This Open Data Set is provided for testing, demo and training purposes, with a
dataset of many beers of the world. 

The beers.descript description text of a beer may look strangely formated, or,
badly formated. That's because I took time to tidy up the original dataset,
but not as far as tyding up the whole CSV files.

The plain shell script assumes you have a PostgreSQL running and that your OS
user as a corresponding role in PostgreSQL matching the needs of the script to
create a database, connect, etc.

Just adapt all this to suit your needs! 

This work and the original data set, modified, are both under the Open
Database Licence from Open Data Commons, found in LICENCE file.

The licence of the original dataset, modified by me for the purpose of
adapting it to PostgreSQL can be found in the `openbeerdb_csv` directory.

It can also be read online on (https://opendatacommons.org/licenses/dbcl/1-0/)[https://opendatacommons.org/licenses/dbcl/1-0/]
