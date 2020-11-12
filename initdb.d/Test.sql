DROP USER IF EXISTS mysql;
CREATE USER mysql IDENTIFIED WITH mysql_native_password BY 'mysql';
DROP SCHEMA IF EXISTS test;
CREATE schema test;
USE test;
GRANT ALL PRIVILEGES ON test.* TO 'mysql'@'%';

DROP TABLE IF EXISTS test_t;

CREATE TABLE test_t
(
	id      INT(10) NOT NULL AUTO_INCREMENT,
	name    VARCHAR(40) DEFAULT NULL,
    primary key(id)
);

INSERT INTO test_t (name) VALUES ("Name1"),("Name2"),("Name3"),("Name4"),("Name5");


DROP TABLE IF EXISTS null_restriction_t;

CREATE TABLE null_restriction_t
(
	id      INT(10) NOT NULL AUTO_INCREMENT,
	name    VARCHAR(40) DEFAULT NULL,
    primary key(id)
);

INSERT INTO null_restriction_t (name) VALUES ("Name1"),("Name2"),("Name3"),("Name4"),("Name5");
