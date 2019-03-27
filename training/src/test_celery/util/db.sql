-- psql -h localhost -d postgres -U postgres -p 5432 -a -q -f db.sql

DROP DATABASE mycelery_dbname;
DROP DATABASE mycelery_dbname_test;

DROP ROLE mycelery_username;
DROP ROLE mycelery_username_test;

CREATE DATABASE mycelery_dbname;
CREATE USER mycelery_username WITH ENCRYPTED PASSWORD 'mycelery_password';
GRANT ALL PRIVILEGES ON DATABASE mycelery_dbname TO mycelery_username;

CREATE DATABASE mycelery_dbname_test;
CREATE USER mycelery_username_test WITH ENCRYPTED PASSWORD 'mycelery_password_test';
GRANT ALL PRIVILEGES ON DATABASE mycelery_dbname_test TO mycelery_username_test;

