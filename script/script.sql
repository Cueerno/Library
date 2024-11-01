create database library_repository;

create table if not exists person(
    id serial primary key,
    name varchar(255) not null,
    surname varchar(255) not null,
    year_of_birth int not null check (year_of_birth > 0)
);

create table if not exists book(
    id serial primary key,
    title varchar(255) not null,
    author varchar(255) not null,
    year int not null check (year > 0),
    person_id int references person(id) on delete set null
);