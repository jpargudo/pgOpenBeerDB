#!/bin/bash



echo "dropdb beers"
dropdb beers
echo "createdb beers"
createdb beers
psql beers -q -f ./sql/create_db_beers.sql
psql beers -qc "\copy beers.categories from openbeerdb_csv/categories.csv csv header"
psql beers -qc "\copy beers.styles from openbeerdb_csv/styles.csv csv header"
psql beers -qc "\copy beers.breweries from openbeerdb_csv/breweries.csv csv header"
psql beers -qc "\copy beers.breweries_geocode from openbeerdb_csv/breweries_geocode.csv csv header"
psql beers -qc "\copy beers.beers from openbeerdb_csv/beers.csv csv header"
echo "vacuum full analyze beers"
vacuumdb -qfz beers
echo "execution of query sql/test.sql"
psql beers -q -f sql/test.sql
echo "HINT: do alter your role to search directly tables in schema beers";
echo "      alter user your_user_name set search_path to beers,\"\$user\",public;"
