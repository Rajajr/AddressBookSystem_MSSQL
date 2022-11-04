--UC1-Ability To Create a Address Book Service DataBase
create database Address_Book_Services;
--UC2-Ability to create a Address Book Service Table
create table AddressBook(First_Name varchar(100),Last_Name varchar(100),States varchar(100),City varchar(100),Zip varchar(100),Home_address varchar(200),Phone_No bigint,Email varchar(30));
--UC3-Ability to Insert New Contacts To AddressBook
insert into AddressBook(First_name,Last_name,States,City,Zip,Home_address,Phone_No,Email) values ('Raja','Ravi','TamilNadu','Madurai','600001','India',6379386500,'rajjr@gmail.com');
--UC4-Ability to edit existing person contact
update AddressBook set City='Chennai' where First_Name='Raja';
--UC5-Ability to Delete the Person 
delete from AddressBook where First_Name='Raja';

