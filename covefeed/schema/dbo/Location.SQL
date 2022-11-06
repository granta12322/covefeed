create table Location as 
( 
    -- PK
    ID_location int identity(1,1) primary key
    -- 
    , country_fk varchar(900) not null foreign key references Country(name)
    , latitude decimal(8,6) null
    , longitude decimal(9,6)
    , altitude_metres int null check  (between 0 and 8000)
    , season_start date null
    , season_end date null
) 