ALTER TABLE `airports`
  ADD `type` text NOT NULL,
  ADD `source` text NOT NULL;

LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/airports.dat'
REPLACE INTO TABLE airports
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(apid, name, city, country, iata, icao, y, x, elevation, timezone, dst, tz_id, type, source);

ALTER TABLE `airports`
  DROP COLUMN `type`,
  DROP COLUMN `source`;