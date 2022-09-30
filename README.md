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

It can also be read online on [https://opendatacommons.org/licenses/dbcl/1-0/](https://opendatacommons.org/licenses/dbcl/1-0/)

At the end of the script, you shall see this output in your terminal if everything went fine:

```
           beer           |       category       |               style               | alcohol 
--------------------------+----------------------+-----------------------------------+---------
 Punk IPA                 | North American Ale   | American-Style India Pale Ale     |       6
 Rip Tide                 | North American Ale   | American-Style Imperial Stout     |       8
 Paradox Speyside         | North American Ale   | American-Style Imperial Stout     |      10
 The Physics              | British Ale          | Extra Special Bitter              |       5
 Hop Rocker               | North American Lager | American-Style Lager              |     5.5
 Hardcore IPA             | North American Ale   | Imperial or Double India Pale Ale |       9
 Trashy Blonde            | British Ale          | Special Bitter or Best Bitter     |     4.1
 77 Lager                 | German Lager         | German-Style Pilsener             |     4.9
 Dogma                    | Other Style          | Herb and Spice Beer               |     7.8
 Tokyo                    | North American Ale   | American-Style Imperial Stout     |      12
 Tokyo*                   | North American Ale   | American-Style Imperial Stout     |    18.2
 Tactical Nuclear Penguin | North American Ale   | American-Style Imperial Stout     |      32
(12 rows)

HINT: do alter your role to search directly tables in schema beers
      alter user your_user_name set search_path to beers,"$user",public;
```
