create table dbo.[Location] 
( 
    -- PK
    ID_location int identity(1,1) primary key
    -- FK
    , country_fk varchar(900) not null foreign key references Country(name)
    -- Data
    , latitude decimal(8,6) null
    , longitude decimal(9,6) null 
    , altitude_metres int null 
    , season_start date null
    , season_end date null
    , check  (altitude_metres between 0 and 8000)
) 