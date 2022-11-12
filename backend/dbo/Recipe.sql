-- Write your own SQL object definition here, and it'll be included in your package.
create table dbo.Recipe 
(
    ID_recipe int identity(1,1) primary key
    , brewing_device_fk int foreign key references BrewingDevice(ID_brewing_device)
    , grinder_fk int foreign key references Grinder(ID_grinder)
    , bloom_time_seconds int null
    , bloom_water_mass_ratio float null
    , steep_time_seconds int null
    , steep_water_mass_ratio float null
    , grindsize NVARCHAR(100) not null
    , milk_mass_ratio float null
    , check(grindsize in ('Espresso fine','Fine','Medium-fine','Medium','Medium-coarse','Coarse'))
    
)