CREATE TABLE [dbo].[Purchase]
(
  ID_purchase int identity(1,1) primary key 
  -- FK
  , user_fk varchar(900) not null
  , roasted_bean_fk int null
  , FOREIGN KEY(user_fk, roasted_bean_fk) references User_RoastedBean(user_fk, roasted_bean_fk)

  , vendor_fk int null
  , foreign key (vendor_fk) references Vendor(ID_vendor) 

  -- Data
  , [date] date

  , mass_grams int not null
  , check (mass_grams > 0)

  , price_pence int not null
  , check (price_pence >= 0)
)
