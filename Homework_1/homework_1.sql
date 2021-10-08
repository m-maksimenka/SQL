-- 1. Вывести все поля и все строки.
SELECT * FROM qa_users;

-- 2. Вывести всех студентов в таблице.
SELECT user_id, username 
FROM qa_users;

-- 3. Вывести только id пользователей.
SELECT user_id 
FROM qa_users;

-- 4. Вывести только имена пользователей.
SELECT username 
FROM qa_users;

-- 5. Вывести только email пользователей.
SELECT email 
FROM qa_users;

-- 6. Вывести имя и email пользователей.
SELECT username, email 
FROM qa_users;

-- 7. Вывести id, имя, email и дату создания пользователей.
SELECT user_id, username, email, created_on 
FROM qa_users;

-- 8. Вывести пользователей, у которых пароль 12333.
SELECT * FROM qa_users
WHERE password = '12333';

-- 9. Вывести пользователей, которые были созданы 2021-03-26 00:00:00.
SELECT * FROM qa_users
WHERE created_on = '2021-03-26 00:00:00';

-- 10. Вывести пользователей, у которых в имени есть слово Anna.
SELECT * FROM qa_users
WHERE username LIKE '%Anna%';

-- 11. Вывести пользователей, у которых в имени в конце есть 8.
SELECT * FROM qa_users
WHERE username LIKE '%8';

-- 12. Вывести пользователей, у которых в имени в есть буква а.
SELECT * FROM qa_users
WHERE username LIKE '%a%';

-- 13. Вывести пользователей, которые были созданы 2021-07-12 00:00:00.
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00';

-- 14. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313.
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND password = '1m313';

-- 15. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey.
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND username LIKE '%Andrey%';

-- 16. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8.
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND username LIKE '%8%';

-- 17. Вывести пользователей, у которых id равен 10.
SELECT * FROM qa_users
WHERE user_id = 10;

-- 18. Вывести пользователей, у которых id равен 53.
SELECT * FROM qa_users
WHERE user_id = 53;

-- 19. Вывести пользователей, у которых id больше 40.
SELECT * FROM qa_users
WHERE user_id > 40;

-- 20. Вывести пользователей, у которых id меньше 30.
SELECT * FROM qa_users
WHERE user_id < 30;

-- 21. Вывести пользователей, у которых id меньше 27 или больше 88.
SELECT * FROM qa_users
WHERE user_id < 27 OR user_id > 88;

-- 22. Вывести пользователей, у которых id меньше либо равен 37.
SELECT * FROM qa_users
WHERE user_id <= 37;

-- 23. Вывести пользователей, у которых id больше либо равен 37.
SELECT * FROM qa_users
WHERE user_id >= 37;

-- 24. Вывести пользователей, у которых id больше 80, но меньше 90.
SELECT * FROM qa_users
WHERE user_id > 80 AND user_id < 90;

-- 25. Вывести пользователей, у которых id между 80 и 90.
SELECT * FROM qa_users
WHERE user_id BETWEEN 80 AND 90;

-- 26. Вывести пользователей, у которых password равен 12333, 1m313, 123313.
SELECT * FROM qa_users
WHERE password IN ('12333', '1m313', '123313');

-- 27. Вывести пользователей, у которых created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00.
SELECT * FROM qa_users
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. Вывести минимальный id.
SELECT MIN(user_id) AS MinId
FROM qa_users;

-- 29. Вывести максимальный id.
SELECT MAX(user_id) AS MaxID
FROM qa_users;

-- 30. Вывести количество пользователей.
SELECT COUNT(user_id)
FROM qa_users;

-- 31. Вывести id пользователей, имя, дату создания. Отсортировать по порядку возрастания даты добавления пользователя.
SELECT user_id, username, created_on
FROM qa_users
ORDER BY created_on ASC;

-- 32. Вывести id пользователей, имя, дату создания. Отсортировать по порядку убывания даты добавления пользователя.
SELECT user_id, username, created_on
FROM qa_users
ORDER BY created_on DESC;