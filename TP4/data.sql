CREATE DATABASE demosql;
USE demosql;
CREATE TABLE myTable (id int AUTO_INCREMENT, name varchar(45) NOT NULL, PRIMARY KEY (id));
INSERT INTO myTable (id, name) VALUES (NULL, 'bob');
INSERT INTO myTable (id, name) VALUES (NULL, 'alice');
INSERT INTO myTable (id, name) VALUES (NULL, 'john');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);

