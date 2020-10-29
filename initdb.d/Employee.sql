DROP SCHEMA IF EXISTS test;
CREATE schema test;
USE test;

DROP TABLE IF EXISTS test_t;

CREATE TABLE test_t
(
	id      INT(10) NOT NULL AUTO_INCREMENT,
	name    VARCHAR(40) DEFAULT NULL,
    primary key(id)
);

INSERT INTO test_t (name) VALUES ("Name1"),("Name2"),("Name3"),("Name4"),("Name5");


