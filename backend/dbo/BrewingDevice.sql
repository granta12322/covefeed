-- Write your own SQL object definition here, and it'll be included in your package.
create table BrewingDevice 
(
    ID_brewing_device int identity(1,1) primary key
    , [name] varchar(900)

)