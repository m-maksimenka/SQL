-- 1. Создать базу по представленному образцу.
-- У каждой таблицы должно быть поле id.
-- id автоинкрементальный и является первичным ключом.

CREATE TABLE employees (
    id serial PRIMARY KEY,
    employee_name varchar NOT NULL
);

CREATE TABLE roles (
    id serial PRIMARY KEY,
    role_title varchar NOT NULL
);

CREATE TABLE salary (
    id serial PRIMARY KEY,
    monthly_salary int NOT NULL
);

CREATE TABLE service (
    id serial PRIMARY KEY,
    service_title varchar NOT NULL,
    price int NOT NULL
);

CREATE TABLE materials (
    id serial PRIMARY KEY,
    material_title varchar NOT NULL,
    amount int NOT NULL,
    price int NOT NULL
);

CREATE TABLE employees_roles (
    id serial PRIMARY KEY,
    id_role int NOT NULL,
    id_employee int NOT NULL,
    FOREIGN KEY(id_role) REFERENCES roles(id),
    FOREIGN KEY(id_employee) REFERENCES employees(id)
);

CREATE TABLE roles_salary (
    id serial PRIMARY KEY,
    id_role int NOT NULL,
    id_salary int NOT NULL,
    FOREIGN KEY(id_role) REFERENCES roles(id),
    FOREIGN KEY(id_salary) REFERENCES salary(id)
);

CREATE TABLE claim (
    id serial PRIMARY KEY,
    service_id int NOT NULL,
    employee_id int NOT NULL,
    material_id int NOT NULL,
    claim_date date NOT NULL,
    sales_manager int NOT NULL,
    FOREIGN KEY(service_id) REFERENCES service(id),
    FOREIGN KEY(employee_id) REFERENCES employees(id),
    FOREIGN KEY(material_id) REFERENCES materials(id),
    FOREIGN KEY(sales_manager) REFERENCES employees(id)
);