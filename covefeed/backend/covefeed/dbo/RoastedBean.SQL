create table [dbo].[RoastedBean] 
(
    --PK
    ID_roasted_bean int identity(1,1) primary key
    -- FK
    , coffee_bean_fk int not null foreign key references CoffeeBean(ID_coffee_bean)
    -- Data 
    , roast_level varchar(100) not null 
    , roast_date date null

    -- Constraints
    , unique(coffee_bean_fk, roast_level, roast_date)
    , check (roast_level in ('light', 'medium', 'dark'))
)


