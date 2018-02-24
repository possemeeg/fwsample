CREATE TABLE role (
  id CHAR(10) NOT NULL,
  description VARCHAR(256),
  PRIMARY KEY (id)
);

CREATE TABLE user_role (
  role_id CHAR(10) NOT NULL,
  username VARCHAR(256) NOT NULL,
  PRIMARY KEY (role_id, username),
  FOREIGN KEY (role_id)
     REFERENCES role(id),
  FOREIGN KEY (username)
     REFERENCES localuser(username)
);

-- add roles
INSERT INTO role (id, description) VALUES ('DEV', 'Developer');
INSERT INTO role (id, description) VALUES ('USER', 'Normal user');
INSERT INTO role (id, description) VALUES ('ADMIN', 'Administrator');

-- give all users role USER
INSERT INTO user_role SELECT 'USER', username FROM localuser
