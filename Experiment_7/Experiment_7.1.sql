CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary NUMERIC(10,2) NOT NULL
);

INSERT INTO Staff (staff_id, name, salary) VALUES
(101, 'Amit Sharma', 85000.00),
(102, 'Priya Patel', 95000.00),
(103, 'Rahul Verma', 60000.00),
(104, 'Neha Gupta', 80000.00),
(105, 'Raj Kumar', 75000.00),
(106, 'Sneha Singh', 90000.00),
(107, 'Vikas Yadav', 70000.00),
(108, 'Pooja Mehta', 65000.00);

DO $$
DECLARE
    staff_cursor CURSOR FOR
        SELECT name, salary
        FROM Staff
        ORDER BY salary DESC
        LIMIT 5;

    v_name Staff.name%TYPE;
    v_salary Staff.salary%TYPE;
BEGIN
    OPEN staff_cursor;

    LOOP
        FETCH staff_cursor INTO v_name, v_salary;

        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Name: %, Salary: %', v_name, v_salary;
    END LOOP;

    CLOSE staff_cursor;
END;
$$;