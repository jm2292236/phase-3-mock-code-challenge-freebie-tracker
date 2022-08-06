DROP TABLE companies;
DROP TABLE devs;
DROP TABLE freebies;
DELETE FROM schema_migrations;


DELETE FROM companies;
DELETE FROM devs;
DELETE FROM freebies;


SELECT * FROM companies;
SELECT * FROM devs;
SELECT * FROM freebies;

SELECT * FROM companies
ORDER BY founding_year ASC
LIMIT 1;
