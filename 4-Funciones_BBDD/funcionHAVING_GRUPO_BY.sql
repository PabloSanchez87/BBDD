-- CLAUSULA HAVING -> para poner condiciones a las agrupaciones con group by
use world;

-- poblacion de cada continente y region
Select continent, region, sum(population) as Poblacion
from world.country 
	group by Continent, region
	order by Continent, region;

-- poblacion de cada continente
Select continent, sum(population) as Poblacion
from world.country 
	group by Continent having sum(population)> 100000000
	order by Continent;
    -- CLAUSULA HAVING -> para poner condiciones a las agrupaciones con group by

-- maximo y minimo de la esperanza de vida por continente y region
SELECT continent, region, max(lifeExpectancy), min(lifeExpectancy)
FROM country
	group by continent, region HAVING min(lifeExpectancy) > 40
	order by continent, region;
-- CLAUSULA HAVING -> para poner condiciones a las agrupaciones con group by
