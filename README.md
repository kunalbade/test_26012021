# test_26012021

The files in this repository are created for a specific scenario.
User story:
As a Member I would like to have an ability to choose various options on the screen, so that I can
calculate and view the monthly premiums on the screen.
Requirements
1. Develop a screen that accepts the below inputs and display the death sum on the screen.
1. Name
2. Age
3. Date of Birth
4. Death – Sum Insured
5. Occupation
2. All input fields are mandatory
3. Add a field to display the Monthly Premium
4. The occupations dropdown list should have the following options: Cleaner, Doctor, Author,
Farmer, Mechanic and Florist
5. Once all the input fields are specified, selection of the occupation should trigger the
premium calculation and update the Monthly Premium display field
6. Develop the API method to calculate and return the Death Sum Premium using the following
reference tables and calculation

3. Monthly death premium calculation
Monthly Death Premium = (Death Cover amount * Occupation Rating Factor * Age)
/1000 * 12
 

The DB scripts are attached in the repository and they need to be executed in a specific sequence with sa permissions.
1. Create_DB_Tables.SQL
this need to be executed as the first one.
this will create the test database and then the 2 tables which are needed for the calculations.

2. Populate_table_data.sql
this will populate the data in the tables created in step 1.

3. usp_get_monthly_death_premium_calc.sql
this is the actual calculation procedure which will accept inputs from the front end and then will provide the result.

4 (Optional) Debug_query
this query/script will help you to run the procedure from the database without any front end involvement.
this can be used to test the various inputs and the results.
