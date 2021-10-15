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

-- 2. Заполнить таблицы данными. Не менее 10 строк в каждой таблице.

-- Заподнение таблицы employees.
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Michael Scott');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Karen Filippelli');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Pam Beesly');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Jim Halpert');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Dwight Schrute');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Andy Bernard');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Stanley Hudson');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Phyllis Lapin-Vance');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Angela Martin');
INSERT INTO employees (id, employee_name)
VALUES (DEFAULT, 'Kevin Malone');

-- Заполнение таблицы roles
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Regional Manager');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Sales Representative');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Receptionist');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Assistant Regional Manager');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Sales Representative');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Sales Representative');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Sales Representative');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Sales Representative');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Senior Accountant');
INSERT INTO roles (id, role_title)
VALUES (DEFAULT, 'Accountant');

-- Заполнение таблицы salary.
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 2000);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1900);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1800);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1700);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1600);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1500);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1400);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1300);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1200);
INSERT INTO salary (id, monthly_salary)
VALUES (DEFAULT, 1100);

-- Заполнение таблицы service.
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Delivery', 100);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Consulting services', 200);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Marketing services', 300);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Waste management services', 400);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Legal services', 500);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Insurance services', 600);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Design services', 700);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Delivery services', 800);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Printing services', 900);
INSERT INTO service (id, service_title, price)
VALUES (DEFAULT, 'Maintenance services', 1000);

-- Заполнение таблицы materials.
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Chiffon', 100, 100);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Cotton', 100, 200);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Crepe', 100, 300);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Denim', 100, 400);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Lace', 100, 500);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Leather', 100, 600);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Linen', 100, 700);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Satin', 100, 800);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Silk', 100, 900);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Wool', 100, 1000);