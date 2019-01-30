
DROP DATABASE IF EXISTS ad_lister;

CREATE DATABASE IF NOT EXISTS ad_lister;
USE ad_lister;

SELECT ad_lister;

CREATE TABLE IF NOT EXISTS users (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(50) NOT NULL,
  user_password VARCHAR(16) NOT NULL,
  PRIMARY KEY (user_id)
);

ALTER TABLE users
ADD UNIQUE (user_email);

CREATE TABLE IF NOT EXISTS ads (
  ad_id INT UNSIGNED NOT NULL,
  ad_title VARCHAR(32) NOT NULL,
  ad_des TEXT NOT NULL,
  PRIMARY KEY (ad_id),
  user_id INT UNSIGNED DEFAULT NULL,
  category_id VARCHAR(5) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE IF NOT EXISTS categories (
  category_id VARCHAR(5) NOT NULL,
  name_category VARCHAR(32) NOT NULL,
  PRIMARY KEY (category_id)
);

ALTER TABLE ads
ADD FOREIGN KEY (category_id) REFERENCES categories (category_id);


SELECT ad_des
FROM ads
Where user_id IN (
  SELECT user_id
  FROM users
  WHERE user_id = 1
);