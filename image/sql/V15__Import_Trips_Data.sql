LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/trips.dat'
REPLACE INTO TABLE trips
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(`name`,`url`,`uid`,`trid`,`public`,`note`);