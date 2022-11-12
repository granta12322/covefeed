create table [dbo].[CoffeeBean]
(
    -- PK
    ID_coffee_bean int identity(1,1) primary key
    -- FKs
    , location_fk int not null foreign key references [Location](ID_location)
    , farm_fk int null foreign key references Farm(ID_farm)
    , harvest_date date null
)
