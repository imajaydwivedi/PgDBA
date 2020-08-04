DROP TABLE IF EXISTS performance_test;
CREATE TABLE performance_test (
	id serial,
	location text
);

INSERT INTO performance_test (location)
SELECT 'Bengaluru, India' FROM generate_series(1,500000000);

SELECT * FROM performance_test