LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/airlines.dat'
REPLACE INTO TABLE airlines
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(alid, name, alias, iata, icao, callsign, country, active);