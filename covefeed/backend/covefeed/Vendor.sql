CREATE TABLE [dbo].[Vendor]
(
  ID_vendor int identity (1,1)
  ,[name] varchar(1000) not null
  , website_url varchar(1000) null
)
