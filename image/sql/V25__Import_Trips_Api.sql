LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/api/trips.dat'
REPLACE INTO TABLE api
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(`tab`, `col`, `cmd`, `result`);