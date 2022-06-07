create database if not exists onlinelibrary ;
use  onlinelibrary;
create table if not exists adminn(admin_id varchar(200), adminname varchar(200), email varchar(45),primary key(admin_id));
create table if not exists usertype(typee varchar(200), user_time int   , primary key(typee));
create table if not exists useer( user_id varchar(200) not null, user_name varchar(200), email varchar(45),
typee varchar (200),admin_id varchar(200), primary key(user_id),
foreign key(typee) references usertype(typee),
foreign key(admin_id) references adminn(admin_id));
create table  if not exists book(book_ISBN varchar(200) not null,book_title varchar(200),
 author varchar(100),booktype varchar(100),
category varchar(200),
primary key(book_ISBN));
create table if not exists getbook(user_id varchar(200) not null,book_ISBN varchar(200) not null,issue_date date,expiry_date date,
foreign key(user_id) references useer(user_id),
foreign key(book_ISBN ) references book(book_ISBN),
primary key(user_id,book_ISBN));
drop table useer;

create table if not exists login_credentials (user_id varchar(100) not null,
 password varchar(100) not null,
 primary key (user_id)
);
select * from useer;
 -- drop database onlinelibrary;
-- insert into adminn (admin_id, adminname,email) values( "Lib1", "molvi", "molvi2@gmail.com");
-- insert into usertype (typee, user_time) values ("Free", 10);
-- insert into useer (user_id, user_name,email) values ( "a1234", "ali", "a@gmail");

select * from login_credentials;

create table if not exists librarian_credentials (lib_id varchar(100) not null, password varchar(100) not null,
primary key (lib_id));

-- drop table libraian_credentials;
insert into librarian_credentials(lib_id, password) values("LIB123", "admin346");
select * from usertype;
insert into usertype (typee, user_time) Values ("Subscriber", 30);
insert into usertype (typee, user_time) Values ("Free", 10);

truncate table getbook;
DELETE FROM book where book_ISBN =("1-86092-049-7");


insert into book ( book_ISBN, book_title, author, booktype, category) Values ( "12345", "Zameen", "Asim Bakhshi", " Free", " Fiction");
insert into book ( book_ISBN, book_title, author, booktype, category) Values (3467,"Relativety", "Enistein", "Paid", "Science" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (23467, "Bang e Dara", "Allama Iqbal", "Free", "Poetry" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (56123, "Philosophy", "Junaid Akhtar", "Paid", "Philosophy" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (786432, "Zindagi", "Sardar Moazzam", "Free", "Humor" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (678864, "Namal", "Hamza Iqbal", "Paid", "Fantasy" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (124568, "Chakwal", "Ali Murtaza", "Free", "History" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (87547, "Kashmir", "M Asad Ayyub", "Paid", "Fiction" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (456709, "Pakistan", "Zain Khan", "Free", "Fiction" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (456657, "Islam", "Zain Fareed", "Free", "Religion" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (4534509, "Khuda aur Mohabbat", "Hashim Wajahat", "Free", "Fiction" );
insert into book ( book_ISBN, book_title, author, booktype, category) Values (45356789, "DataBase Systems", "Tanvir Afzal", "Free", "Technology" );
-- insert into book ( book_ISBN, book_title, author, booktype, category) Values (1-86092-049-7, "The Grass is Always Greener", "Jeffrey Archer", "Free", "Fiction" );
select * from librarian_credentials;
select * from login_credentials;

select count(book_title) from book where book_title = "Chakwal";

insert into librarian_credentials (lib_id, password) values("LIB1234", "admin346");
select * from book;
select * from useer;
select * from getbook;


