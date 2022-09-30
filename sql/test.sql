-- sample query
select 
    b.name        as beer
  , c.cat_name    as category
  , s.style_name  as style
  , b.abv         as alcohol
from 
    beers b
  , breweries bs
  , styles s 
  , categories c
where 
      b.brewery_id = bs.id 
  and b.style_id   = s.id 
  and s.cat_id     = c.id
  and bs.name ~* 'brewdog';
