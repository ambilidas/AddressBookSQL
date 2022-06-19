--UC1
Create database AddressBookService
--UC2
Create table AddressBook(FirstName varchar(200),LastName varchar(200),Address varchar(200),City varchar(200),State varchar(200),Zip bigint,PhoneNumber bigint,Email varchar(200))
--UC3
--insert contacts to table
insert into AddressBook values('Ambili','das','kanath','calicut','kerala',673307,1234564,'ambili@gmail.com')
insert into AddressBook values('Anju','nair','kanath','calicut','kerala',673308,1234564,'anju@gmail.com')
insert into AddressBook values('Raju','menon','kanath','calicut','kerala',673309,1234564,'raju@gmail.com')
--view address book
select * from AddressBook
--UC4
--Ability to edit contact
update AddressBook set FirstName='Athul' where FirstName='Raju'
--UC5
--Delete contact
delete AddressBook where FirstName='Ambili'
--UC6
--Retrieve person belonging in city or state
select FirstName from AddressBook where City='calicut' or State='kerala'
--UC7
--size od address book by city and state
select COUNT(City) as totalsize from AddressBook
select COUNT(State) as totalsize from AddressBook
--UC8
--sorting the persons by name
select * from AddressBook order by FirstName 
--UC9
--Add coloumns to table
alter table AddressBook add name varchar(200)
alter table AddressBook add Type varchar(200)
update AddressBook set name='adb1' where FirstName='Ambili'
update AddressBook set name='adb2' where FirstName='Anju'
update AddressBook set name='adb3' where FirstName='Athul'
update AddressBook set Type='Friend' where FirstName='Ambili'
update AddressBook set Type='Friend' where FirstName='Anju'
update AddressBook set Type='Family' where FirstName='Athul'
--UC10
--get number of contact by type
select COUNT(Type) as numberOfContact from AddressBook
--UC11
--add a person to both friend and family
insert into AddressBook values('Anu','raj','abc','mumbai','MH',7542,7854123,'anu@gmail.com','adb4','Friend')
insert into AddressBook values('Anu','raj','abc','mumbai','MH',7542,7854123,'anu@gmail.com','adb4','Family')