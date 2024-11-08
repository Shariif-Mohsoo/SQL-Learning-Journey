-- creating the table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30) DEFAULT NULL,
    last_name VARCHAR(30) DEFAULT NULL,
    email VARCHAR(30) DEFAULT NULL,
    phone_number VARCHAR(12) DEFAULT NULL,  -- Use VARCHAR for phone numbers
    hire_date DATE DEFAULT NULL,
    department_id INT,
    FOREIGN KEY (department_id) 
        REFERENCES department(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
-- inserting data
insert into employees values
(1, 'John', 'Doe', 'johndoe@example.com', '1234567890', '2023-01-10', 1),
(2, 'Jane', 'Smith', 'janesmith@example.com', '0987654321', '2023-03-15', 2),
(3, 'Alice', 'Johnson', 'alicej@example.com', '1122334455', '2023-05-20', 3),
(4, 'Bob', 'Brown', 'bobbrown@example.com', '6677889900', '2023-07-30', 4);

select * from employees;
