--UC1-Ability To Create a Address Book Service DataBase
create database Address_Book_Services;

--UC2-Ability to create a Address Book Service Table
create table AddressBook(First_Name varchar(100),Last_Name varchar(100),States varchar(100),City varchar(100),Zip varchar(100),
Home_address varchar(200),Phone_No bigint,Email varchar(30));

--UC3-Ability to Insert New Contacts To AddressBook
insert into AddressBook(First_name,Last_name,States,City,Zip,Home_address,Phone_No,Email) values 
('Raja','Ravi','TamilNadu','Madurai','600001','India',6379386500,'rajjr@gmail.com'),
('sara','sam','kerala','kochi','345678','India',2345678900,'jsvhdke@gmail.com');

--UC4-Ability to edit existing person contact
update AddressBook set City='Chennai' where First_Name='Raja';

--UC5-Ability to Delete the Person 
delete from AddressBook where First_Name='Raja';

--UC6-Ability To Retrive Person By State or Name
select *from AddressBook where First_Name='sara' and States='Kerala';

--UC7-Ability To Understand The Size Of AddressBook
select count (City)from AddressBook where City='Chennai';
select count (States)from AddressBook where States='TamilNadu';

--UC8-Retrive Entries Sorted Alphabetically By Persons Name For A Given City
select *from AddressBook
where City='Chennai' 
order by First_Name 

--UC9-Alter The Address Book database With Name and Type
alter table AddressBook Add Name varchar(100), Type Varchar(100)

update AddressBook set Name='Friends Group', Type='Friend' where First_Name='Raja';
update AddressBook set Name='Family Group', Type='Family ' where First_Name='sara';