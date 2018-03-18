LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/users.dat'
REPLACE INTO TABLE users
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(name,password,uid,public,email,count,editor,elite,validity,guestpw,startpane,locale,units);