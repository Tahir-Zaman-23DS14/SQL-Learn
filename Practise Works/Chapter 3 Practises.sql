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