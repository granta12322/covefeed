-- Write your own SQL object definition here, and it'll be included in your package.
create table dbo.Farm 
( 
    ID_farm int identity(1,1) primary key 
    , farm_name  varchar(1000) null
    , farmer_name varchar(1000) null
)