CREATE DATABASE decision_db;
USE decision_db;

CREATE TABLE users (
	'user_id' int NOT NULL AUTO_INCREMENT,
    'name' varchar(30) NOT NULL,
	'username' varchar(20) NOT NULL UNIQUE,
	'password' varchar(20) NOT NULL,
    'logged_in' BOOLEAN DEFAULT false,
	PRIMARY KEY (user_id),
    );

CREATE TABLE polls (
    'user_id' int NOT NULL,
	'poll_id' int PRIMARY NOT NULL AUTO_INCREMENT,
	'question' text NOT NULL,
    -- 'poll_type' varchar(55) NOT NULL DEAULT "General",
    'created_at' timestamp DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE options (
	`poll_id` int(11) NOT NULL PRIMARY,
    `option_id` int(11) NOT NULL PRIMARY,
	`option_text` text NOT NULL,
);

CREATE TABLE votes (
	`poll_id` int(11) NOT NULL ,
	`option_id` int(11) NOT NULL,
	`user_id` text NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (option_id) REFERENCES options (option_id),
    FOREIGN KEY (poll_id) REFERENCES polls (poll_id)
);



-- after we create randomizer and rps stuff

CREATE TABLE decisions(   
    'decision_type' varchar(30) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);




-------------------------JSON-----------------------

users:{
    userID:random id generator funct
    name:"",
    username:"",
    pswd:"",
    isLoggedIn:boolean
    polls:[{
        pollID:random id generator funct, --will be used in route to display/share specific poll
        pollTitle:"",
        pollOptions:[{
            optiontext:"", --stores option
            optionVal:number --stores votes
            },
            {
            optiontext:"",
            optionVal:number
            },
            {
            optiontext:"",
            optionVal:number
            },
            {
            optiontext:"",
            optionVal:number
            }]
    }]
}

