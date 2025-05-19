-- Return animal name and habitat
SELECT animal.animal_name, habitat.habitat_name 
FROM animal
CROSS JOIN habitat
WHERE animal.animal_id=habitat.habitat_id;

-- Total number of feedings for each type of food
SELECT DISTINCT 
COUNT(feeding_time), food
FROM feeding_schedule
GROUP BY food;

-- Names of animals which need to be fed more than once per day.
SELECT animal.animal_name, COUNT(feeding_schedule.feeding_time) 
FROM feeding_schedule
CROSS JOIN animal 
WHERE animal.animal_id = feeding_schedule.animal_id;
