## Criteria
- Slowly changing drink table
    - Contains drinks from many users
    - Need to filter by coffee bean
    - User needs to see drinks they have made and the recipes used 
    - Recipe not tied to a coffee bean so should not have relationship there
- Possible query types:
    1. User searches only their drink
    2. User searches drinks by coffee bean
    3. User searches drinks by their own recipes
    4. User sees recipe statistics for a particular drink type
    5. User seees recipe statistics for a particular drink type  
    6. User searches the coffee beans they have drunk 
    7. Future ML user coffee-

## Schema Options:
1. Star Schema:
    - Drink at centre
    - User, Coffee Bean, and Recipe Dimension tables.
2. Snowflake 1:
    - User<Recipe<Drink
    - Coffee Bean<Drink
3. Snowflake 2:
    - User<Coffe Bean<Drink
    -Coffe Bean< Drink
4. Snowflake 3:
    - User<Recipe<Coffee bean<drink


## Analysis

Can immediately rule out Snowflake 3 as relates Recipe and Coffee Bean

Question then becomes how do Star and Snowflake 1 meet the query types.

### **New consideration**  
Will require a seperate ingredients table to record ingredient properties i.e. milk type, sugar type. Do not care about specifics so have seperate intermediary coffee bean table linked to users and.


