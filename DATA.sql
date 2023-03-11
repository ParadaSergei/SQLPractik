CREATE TABLE Item(
Id INT PRIMARY KEY,
Names nvarchar(40),
Price money
)
CREATE TABLE Clients(
Id_CLIENT INT  PRIMARY KEY,
Code  nvarchar(40),
first_name nvarchar(40),
last_name nvarchar(40),
sourse_id int
)

CREATE TABLE Category(
Id INT  PRIMARY KEY,
Names nvarchar(40),
)

CREATE TABLE Category_has_item(
category_Id INT  PRIMARY KEY,
good_Id INT,
)


CREATE TABLE Statys(
Id_status INT  PRIMARY KEY,
Names nvarchar(40),
)

CREATE TABLE Sourses(
Id INT  PRIMARY KEY,
Names nvarchar(40),
)


CREATE TABLE Sale(
Id INT  PRIMARY KEY,
Id_Client INT,
Number nvarchar(20),
dt_created DATE,
dt_modified  DATE,
sale_sum Money,
status_id INT,
FOREIGN KEY(status_id) REFERENCES [Statys],
FOREIGN KEY(Id_Client) REFERENCES [Clients]
)
CREATE TABLE SALE_HAS_Item (
sale_id int,
item_id int,
FOREIGN KEY(sale_id) REFERENCES [Sale],
FOREIGN KEY(item_id) REFERENCES [Item]
)

CREATE TABLE SALE_history (
sale_id int,
status_id int,
sale_sum int,
active_from DATE,
active_to DATE,
FOREIGN KEY(sale_id) REFERENCES [Sale],
FOREIGN KEY(status_id) REFERENCES [Sale],
)