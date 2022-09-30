see https://orientdb.com/docs/2.2.x/Import-the-Database-of-Beers.html
 * not exactly what we do here : creating a PostgreSQL database of beers but
   * has the schema in an image
   * points to the data : https://openbeerdb.com/
   * licence of data usage : https://opendatacommons.org/licenses/dbcl/1-0/
     * licence in LICENCE.txt here inc
     * is different than the whole project itself, in PostgreSQL licence

Dataset has been modified to suit PostgreSQL:
 * keys with id = -1 added to both styles and categories, to suit -1 
   as references into beers table
 * beers.csv has been modified to be readable with a plain 
   csv import directly into PostgreSQL. So did some csv files

Hence, the data here enclosed is not strictly the same as the one online on
website openbeerdb.com

-- jpa, 09/30/2022
