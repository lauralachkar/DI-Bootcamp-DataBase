CREATE TABLE students (
  id INTEGER IDENTITY(1,1) PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  birth_date date
);

INSERT INTO students VALUES (1, 'Rayan', 'Lachkar','10-01-1997');
SELECT * FROM students;