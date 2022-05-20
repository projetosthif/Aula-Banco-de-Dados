CREATE DATABASE EXEMPLO;

USE EXEMPLO;

CREATE TABLE JOGADORES (
num_jogadores int PRIMARY KEY AUTO_INCREMENT,
nome_jogadores varchar(255),
num_equipe int
);

CREATE TABLE EQUIPES (
num_equipe int PRIMARY KEY AUTO_INCREMENT,
nome_equipe varchar(255)
);

ALTER TABLE JOGADORES ADD FOREIGN KEY(num_equipe) REFERENCES EQUIPES (num_equipe);
