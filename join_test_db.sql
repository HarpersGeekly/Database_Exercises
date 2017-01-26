CREATE DATABASE IF NOT EXISTS join_test_db;

use join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

# add 4 people 3 need to be authors the other null
INSERT into users (name, email, role_id) VALUES
  ('ryan', 'ryan@example.com', 2),
  ('gideon', 'gideon@example.com', 2),
  ('tyler', 'tyler@example.com', 2),
  ('joe', 'joe@example.com', null);

# JOIN
SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

# left join give us a user whether or not it has a role
SELECT users.name as user_name, roles.name as role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

# right join give us a role whether or not it has a user
SELECT users.name as user_name, roles.name as role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

# show the count of users with each role
SELECT roles.name as role_name, count(users.name) as 'folks with this role'
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name order by 'folks with this role';


