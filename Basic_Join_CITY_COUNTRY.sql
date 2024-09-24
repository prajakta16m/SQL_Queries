/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

CITY
Field Type
ID    Number
Name  Varchar(27)
CountryCode  Varchar(3)
District Varchar()
Population  Number 

COUNTRY
FIELD TYPE
CODE   VARCHAR
NAME    VARCHAR
CONTINENT  VARCHAR
REGION  VARCHAR
AREA  NUMBER
POPULATION  NUMBER
GNP  NUMBER
LOCALNAME  VARCHAR
HEADOFSTATE  VARCHAR
CAPITAL  VARCHAR
CODE2  VARCHAR
*/
Select ct.continent, floor(AVG(c.population))
from CITY c , Country ct
where c.countrycode = ct.code
group by ct.continent;
