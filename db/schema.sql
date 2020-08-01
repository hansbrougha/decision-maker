CREATE DATABASE decision_db;
USE decision_db;

CREATE TABLE users
(
	'user_id' int NOT NULL AUTO_INCREMENT,
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
	`poll_id` int(11) NOT NULL,
    `option_id` int(11) NOT NULL,
	`option_text` text NOT NULL,
	PRIMARY KEY ('poll_id','option_id')
)

CREATE TABLE votes (
	`poll_id` int(11) NOT NULL ,
	`option_id` int(11) NOT NULL,
	`user_id` text NOT NULL,
)

ALTER TABLE `votes`
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `user_id` (`user_id`);