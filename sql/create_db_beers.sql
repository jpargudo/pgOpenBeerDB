-- https://orientdb.com/docs/2.2.x/Import-the-Database-of-Beers.html
--

\echo create schema beers
create schema beers;

begin;

set search_path to 'beers';

\echo create table beers.categories
create table beers.categories
(  
   id         integer   primary key
  ,cat_name   text  
  ,last_mod   timestamp
);

\echo create table beers.styles
create table beers.styles 
(
   id         integer   primary key
  ,cat_id     integer   
  ,style_name text
  ,last_mod   timestamp
  ,foreign key (cat_id)
      references beers.categories (id)
);

\echo create table beers.breweries
create table beers.breweries
(
   id         integer   primary key
  ,name       text
  ,address1   text
  ,address2   text
  ,city       text
  ,state      text
  ,code       text
  ,country    text
  ,phone      text
  ,website    text
  ,filepath   text
  ,descript   text
  ,last_mod   timestamp
);

\echo create table  beers.breweries_geocode
create table  beers.breweries_geocode
(
   id         integer   primary key
  ,brewery_id integer   
  ,latitude   numeric
  ,longitude  numeric
  ,accuracy   text
  ,foreign key (brewery_id)
      references beers.breweries(id)
);

\echo create table beers.beers
create table beers.beers
(
   id         integer   primary key
  ,brewery_id integer
  ,name       text
  ,cat_id     integer
  ,style_id   integer
  ,abv        numeric
  ,ibu        numeric
  ,srm        numeric
  ,upc        numeric
  ,filepath   text
  ,descript   text
  ,last_mod   timestamp
  ,foreign key (brewery_id)
      references beers.breweries(id)
  ,foreign key (cat_id)
      references beers.categories(id)
  ,foreign key (style_id)
      references beers.styles(id)
);

commit;
