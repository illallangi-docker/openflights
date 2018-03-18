LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/flights.dat'
REPLACE INTO TABLE flights
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(`uid`,`src_apid`,`src_time`,`dst_apid`,`distance`,`code`,`seat`,`seat_type`,`class`,`reason`,`plid`,`alid`,`trid`,`fid`,`duration`,`registration`,`note`,`upd_time`,`opp`,`src_date`,`mode`);