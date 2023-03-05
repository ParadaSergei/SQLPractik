CREATE TABLE Manager(
ID_Manager INT PRIMARY KEY ,
LoginManager nvarchar(50),
FIOManager nvarchar(50),
DataManager nvarchar(50))

CREATE TABLE Executor(
ID_Executor INT PRIMARY KEY ,
LoginExecutor nvarchar(50),
FIOExecutor nvarchar(50),
DataExecutor nvarchar(50))

CREATE TABLE ZP(
Id_Zp int ,
JuniorMin int,
MiddleMin int,
SeniorMin int
)
CREATE TABLE Kooeficient(
Id_Kooeficient int,
Analized double,
InstallationForEquipment double,
Maintenance double,
TimeKooef DATA,
Dificult double,
Moneys int,
)