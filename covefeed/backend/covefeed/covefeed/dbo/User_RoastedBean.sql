-- Write your own SQL object definition here, and it'll be included in your package.
create table [dbo].User_RoastedBean 
(
    -- PK
    primary key(user_fk, roasted_bean_fk)
    -- FK
    , roasted_bean_fk int not null foreign key references RoastedBean(ID_roasted_bean)
    , user_fk varchar(900) not null foreign key references [User](email)
    -- Data
    , notes varchar(max) null
)