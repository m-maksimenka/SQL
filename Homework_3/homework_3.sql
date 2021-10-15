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

-- Заполнение таблицы employees_roles.
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 1, 1);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 2, 2);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 3, 3);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 4, 4);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 5, 5);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 6, 6);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 7, 7);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 8, 8);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 9, 9);
INSERT INTO employees_roles (id, id_role, id_employee)
VALUES (DEFAULT, 10, 10);

-- Заполнение таблицы roles_salary.
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 1, 2);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 2, 3);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 3, 4);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 4, 5);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 5, 6);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 6, 7);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 7, 8);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 8, 9);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 9, 10);
INSERT INTO roles_salary (id, id_role, id_salary)
VALUES (DEFAULT, 10, 1);

-- Заполнение таблицы claim.
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 1, 2, 3, CURRENT_TIMESTAMP, 4);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 2, 3, 4, CURRENT_TIMESTAMP, 5);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 3, 4, 5, CURRENT_TIMESTAMP, 6);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 4, 5, 6, CURRENT_TIMESTAMP, 7);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 5, 6, 7, CURRENT_TIMESTAMP, 8);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 6, 7, 8, CURRENT_TIMESTAMP, 9);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 7, 8, 9, CURRENT_TIMESTAMP, 10);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 8, 9, 10, CURRENT_TIMESTAMP, 1);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 9, 10, 1, CURRENT_TIMESTAMP, 2);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 10, 1, 2, CURRENT_TIMESTAMP, 3);

-- 3. Добавить таблицу suppliers с полями id, name.
CREATE TABLE suppliers (
    id serial PRIMARY KEY,
    name varchar NOT NULL
);

-- 4. Добавить 10 строк поставщиков в таблицу suppliers.
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'A+more');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Cap Horn');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Construe');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Casa Stockmann');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Cube');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Cut & Pret');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Noom');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Stockmann 1862');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Stockmann Silk');
INSERT INTO suppliers (id, name)
VALUES (DEFAULT, 'Villa Stockmann');

-- 5. Обновить таблицу materials. Добавить поле suplier_id, которое связано с полем id в таблице suppliers.
ALTER TABLE materials
ADD supplier_id int,
ADD FOREIGN KEY(supplier_id) REFERENCES suppliers(id);

-- 6. Обновить таблицу employees. Добавить varchar-поле surname на 50 символов.
ALTER TABLE employees
ADD surname varchar(50);

-- 7. Обновить таблицу salary. Добавить varchar-поле currency на 7 символов.
ALTER TABLE salary
ADD currency varchar(7);