1.Entity name, synonyms and description

nation: synonyms are country, nation refers to the country as a whole, for our project its the US. When looking at the data of the nation it is a compilation of all of the states to get a single number for them all, despite the various differences between them
State: synonyms are land, area, state refers to the an area of the nation that is claimed/labeled properly, we are looking at specific states to grab data from in the U.S
city:  synonyms are town, village, capital, downtown. For our project cities will be the focus of the collection of health data since that is where the most people are. We will also be comparing city to city primarily and since cities have the biggest impact on states they need the most attention for our data.
heath_data: health data is collecting information on the well-being of a residential area 
Demographics: synonyms are enumeration, and statistics. Demographics refer to the statistics of what the group of people are, and how they described as well as how they differ from others such as their background. 
education: the level of schooling and the quality of it as received by the residents of a predetermined area
Family: synonyms are clan, group. Family refers to the background of the individuals such as their health history as well as their siblings and see if there are any health issue factors. 
 
 
2.Relationship maxima and minima

Nation_has_health_data:
Max: One-one, One nation can have one set of health data.
Min:one-zero, one nation has to exist, but not all nations have health data
nation_has_states
Max: one-many, there is one nation but exists of many states
Min: one-zero, there must be one nation, however it may contain no states
state_is_located_in_nation
Max: many-one many states can exist in one nation, but only one
Min: one-one state has to exist in a nation
state_has_health_data
Max: many one, many states each have only one set of health data
Min: one one, states have one and only one set of health data
state_has_demographics
Max: many-many, there may consist of many states with many demographics
Min:one-zero, one state may have no demographics
city_has_state
Max: one-one, a city must exist within a state
Min: zero-zero, a city may not exist within a state
state_has_cities
Max: one-many, a state may consist of many cities
Min: one-zero, a state may not consist of any cities.
city_has_health_data
Max: one-one, every city can only have one set of health data
Min: one-zero, a city must have health data but not all health data can always be reported to the city (i.e. areas with few healthcare plans or doctors)
city_has_education
Max: one-one, a city contains one level of education
Min: one-zero, a city contains no level of education
demographics_have_education
Max: one-one, demographics contain education
Min: one-zero , demographics contain no education
family_has_education
Max: one-one, the family has education
Min: one-zero, the family has no education
demographics_have_family
Max: one-one, demographics consist of one family
Min: one-zero, demographics consist of no family
 

3.maxima and minima per attribute

Nation:
id: max one id, min one id
state: max:none, min: one

state:
id: max one id, min one id
city: max none, min one

city:
id: max one id, min one id
availability_healthy_food: max 100% of people have access, min: 0%
number_grocery_stores: max none, min 0
number_gyms: man none, min 0


Health_data
Id: max one id, min one id
Activity_level: max 100% of people are active, min: 0%
Weight: max 1400lbs, min 0lbs
Bmi: max 100, min 0

Education:
Id: max one id, min one id
History: max, education, min no education
Progress: max: completed, min not completed
Availability: max: completed, min not completed

Family:
Id: max one id, min one id 
Family_history: max one history, min no history
Family_genetic: max many genetics, min one genetic
Sibling: max many siblings, min no siblings
Parent: max 2 parents, min 2 parents
Grandparent: max two grandparents, min two grandparents
Children: max many children, min no children

Demographics:
	Id: max one id, min one id
	Population: max one population, min no population
	Income: no max, min no income
	pct_pop_increase
	sex: max: many sex, min one sex
	race: many races, min one race
	Age: 122 years, min no year
	marital_status: max married, min not married
	Education_level: max PHD, min no education
	employment	: max many employments, min no employment
          Family_history: max one history, min no history
	

