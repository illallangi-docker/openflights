LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/api/system.dat'
REPLACE INTO TABLE api
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(`tab`, `col`, `cmd`, `result`);