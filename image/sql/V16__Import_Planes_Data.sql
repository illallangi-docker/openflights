LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/planes.dat'
REPLACE INTO TABLE planes
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(`name`,`abbr`,`speed`,`plid`,`public`);