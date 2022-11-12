-- Write your own SQL object definition here, and it'll be included in your package.
create table dbo.Drink 
(
    -- PK
    ID_drink int identity(1,1) primary key
    -- FK 
    , roasted_bean_purchase_fk int not null foreign key references RoastedBeanPurchase(ID_roasted_bean_purchase)
    , recipe_fk int null foreign key references Recipe(ID_recipe)
    , dose_grams float
    , [date] date not null 
)

