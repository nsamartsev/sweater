CREATE SEQUENCE hibernate_sequence START 1 INCREMENT 1;

CREATE TABLE IF NOT EXISTS message(
    id int8 NOT NULL,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) NOT NULL,
    user_id int8,
    PRIMARY KEY (ID)
);

CREATE TABLE user_role (
    user_id int8 NOT NULL,
    roles varchar(255)
);

CREATE TABLE usr (
    id int8 NOT NULL,
    activation_code varchar(255),
    active boolean NOT NULL,
    email varchar(255),
    password varchar(255) NOT NULL,
    username varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS message
ADD CONSTRAINT message_user_fk
FOREIGN KEY (user_id) REFERENCES usr;

ALTER TABLE IF EXISTS user_role
ADD CONSTRAINT user_role_user_fk
FOREIGN KEY (user_id) REFERENCES usr;