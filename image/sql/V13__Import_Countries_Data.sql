LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/countries.dat'
REPLACE INTO TABLE countries
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(name, code, oa_code, dst);