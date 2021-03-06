CREATE DATABASE cs_480_national_obesity_rate; 

use  cs_480_national_obesity_rate;

 CREATE TABLE nation(
 ID SMALLINT UNSIGNED  NOT NULL PRIMARY KEY ,
 state VARCHAR(40) NOT NULL,
 health_data_nation SMALLINT UNSIGNED NOT NULL,
 demographic_data_nation SMALLINT UNSIGNED NOT NULL
 );

 CREATE TABLE state(
 ID  SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
 currentstate VARCHAR(40) NOT NULL,
 health_data_state SMALLINT UNSIGNED NOT NULL,
 demographic_data_state SMALLINT UNSIGNED NOT NULL
 );


 CREATE TABLE city(
 ID SMALLINT UNSIGNED PRIMARY KEY,
availability_healthy_food VARCHAR(40) NOT NULL,
 num_gym SMALLINT UNSIGNED NOT NULL,
 number_grocery_store SMALLINT UNSIGNED, 
 health_data_city SMALLINT UNSIGNED,
 demographic_data_city VARCHAR(40)
 );

 CREATE TABLE health_data(
 ID  SMALLINT UNSIGNED PRIMARY KEY,
 activity_level SMALLINT UNSIGNED ,
 weight  SMALLINT UNSIGNED,
 bmi SMALLINT UNSIGNED 
 ); 

CREATE TABLE demographics(
demographics_id SMALLINT UNSIGNED UNIQUE NOT NULL PRIMARY KEY,
population SMALLINT UNSIGNED NOT NULL,
income SMALLINT UNSIGNED NOT NULL,
pct_pop_increase SMALLINT UNSIGNED NOT NULL,
sex VARCHAR(1) NOT NULL,
race VARCHAR(30) NOT NULL,
age SMALLINT UNSIGNED NOT NULL,
marital_status VARCHAR(10) NOT NULL,
employment VARCHAR(20) NOT NULL,
education_level VARCHAR(50),
family_past VARCHAR(50)


); 


CREATE TABLE family(
family_id SMALLINT UNSIGNED NOT NULL UNIQUE PRIMARY KEY,
family_history VARCHAR(50) NOT NULL UNIQUE,
family_genetic VARCHAR(50) NOT NULL UNIQUE,
sibling SMALLINT UNSIGNED,
parent SMALLINT UNSIGNED
)
; 

CREATE TABLE education(
education_id SMALLINT UNSIGNED NOT NULL UNIQUE PRIMARY KEY,
education_history VARCHAR(50) NOT NULL UNIQUE,
progress VARCHAR(50) NOT NULL UNIQUE,
availability VARCHAR(50) NOT NULL UNIQUE,
graduation_date DATE
);