create table [dbo].[RoastedBean] as 
(
    --PK
    ID_roasted_bean int identity(1,1) primary key
    -- FK
    , coffee_bean_fk int not null foreign key references CoffeeBean(ID_coffee_bean)
    -- Data 
    , roast_level varchar(100) not null check in ('light', 'medium', 'dark')
    , roast_date date

    -- Constraints
    , constraint unique(coffee_bean_fk, roast_level, roast_date)
)


