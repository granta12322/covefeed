-- Write your own SQL object definition here, and it'll be included in your package.
create table RoastedBeanPurchase 
(
    ID_roasted_bean_purchase int IDENTITY(1,1) primary key
    -- FK
    , roasted_bean_fk int not null foreign key references RoastedBean(ID_roasted_bean)
    , user_fk varchar(900) not null foreign key references [User](username)
    , vendor_fk int null foreign key references Vendor(ID_vendor)
    , mass_grams int not null 
    , cost int not null 
    , purchase_date date not null
    , notes varchar(max) null 
    , check (mass_grams > 0)
    , check (cost > 0)
)