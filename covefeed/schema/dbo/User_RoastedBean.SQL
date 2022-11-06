create table [dbo].User_RoastedBean as 
(
    -- PK
    primary key(ID_user, ID_roasted_bean)
    -- FK
    , roasted_bean_fk int not null foreign key references RoastedBean(ID_roasted_bean)
    , user_fk int not null foreign key references 
    -- Data
    , notes varchar(max) 
)