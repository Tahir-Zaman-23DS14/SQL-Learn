--DDL > DATA DEFINATION LANGUAGE
-- CREATE, ALTER , DROP

/* Create a New table called persons
with columns: id , person_name , birth,_date, and phone */


CREATE TABLE persons (
  id INT NOT NULL,
  person_name VARCHAR(50) NOT NULL,
  birth_date DATE ,
  phone VARCHAR(11),
  CONSTRAINT pk_persons PRIMARY KEY (id)
)


SELECT * FROM persons

-- Add a new column called email to the persons table

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL


SELECT * FROM persons

-- Remove a column called phone to the persons table
ALTER TABLE persons
DROP COLUMN phone

-- Add a new column called phone to the persons table

ALTER TABLE persons
ADD phone VARCHAR(15)

-- DELETE Entire Table persons
DROP TABLE persons


