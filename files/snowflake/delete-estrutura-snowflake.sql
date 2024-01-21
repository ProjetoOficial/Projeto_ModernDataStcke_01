-- set variables (these need to be uppercase)
set airbyte_role = 'AIRBYTE_ROLE';
set airbyte_username = 'AIRBYTE_USER';
set airbyte_warehouse = 'AIRBYTE_WAREHOUSE';
set airbyte_database = 'AIRBYTE_DATABASE';
set airbyte_schema = 'AIRBYTE_SCHEMA';

begin;

-- Specify the database to use
USE DATABASE identifier($airbyte_database);

-- Drop schema first (if it exists)
DROP SCHEMA IF EXISTS identifier($airbyte_schema);

-- Drop database (if it exists)
DROP DATABASE IF EXISTS identifier($airbyte_database);

-- Drop user (if it exists)
DROP USER IF EXISTS identifier($airbyte_username);

-- Drop warehouse (if it exists)
DROP WAREHOUSE IF EXISTS identifier($airbyte_warehouse);

-- Drop role (if it exists)
DROP ROLE IF EXISTS identifier($airbyte_role);

commit;