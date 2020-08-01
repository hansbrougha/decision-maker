CREATE DATABASE decision_db;
USE decision_db;

CREATE TABLE users
(
	'id' int NOT NULL AUTO_INCREMENT,
	'username' varchar(20) NOT NULL,
	'password' varchar(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE polls
(
	'poll_id' int NOT NULL AUTO_INCREMENT,
	'question' text NOT NULL,
    'created_at' TIMESTAMP DEFAULT NOT NULL
	PRIMARY KEY (id)
);


CREATE TABLE options (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`poll_id` int(11) NOT NULL,
	`option_text` text NOT NULL,
	`votes` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)