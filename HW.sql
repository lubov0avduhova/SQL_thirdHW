--Отсортируйте данные по полю заработная плата (salary) в порядке:
-- убывания; возрастания для каждой группы
Select * from staff order by salary ASC;
Select * from staff order by salary DESC;

--Выведите 5 максимальных заработных плат (salary)
Select salary from staff limit 5;

select* from staff;
--Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT Distinct post, Sum(salary) as "суммарная зарплата" from staff group by post;

--Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет
-- включительно.
SELECT Count(*) from staff where post = 'Рабочий' and age > 23 and age < 50;

--Найдите количество специальностей
SELECT Count(Distinct post) from staff;

--Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
SELECT distinct post from staff where age < 30;