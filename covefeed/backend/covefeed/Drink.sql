create table dbo.Drink 
(
    -- PK
    ID_drink int identity(1,1) primary key
    -- FK 
    , roasted_bean_fk int not null
    , user_fk int not null
    , foreign key(roasted_bean_fk, user_fk) references User_RoastedBean(roasted_bean_fk, user_fk)
    , recipe_fk int  null foreign key references Recipe(ID_recipe)
    , [date] date not null 
)

-- CURRENT TO DO:
-- Figure out how composite keys work 