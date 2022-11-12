-- Write your own SQL object definition here, and it'll be included in your package.
create table Grinder 
(
    ID_grinder int identity(1,1) PRIMARY key
    , [name] varchar(900) not null
)