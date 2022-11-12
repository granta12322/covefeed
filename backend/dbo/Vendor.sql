-- Write your own SQL object definition here, and it'll be included in your package.
create table Vendor 
(
    ID_vendor int identity(1,1) PRIMARY key
    , [name] varchar(1000)
    , website_url varchar(1000)
    , rating float
    , check(rating between 0 and 5)
)