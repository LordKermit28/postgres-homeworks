-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE students
(
    student_id serial,
	first_name varchar(50) NOT NULL,
	last_name varchar(50),
	birthday date,
	phone varchar
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE students ADD COLUMN middle_name varchar(50);

-- 3. Удалить колонку middle_name
ALTER TABLE students DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE students RENAME birthday TO birth_day;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE students ALTER COLUMN phone SET DATA TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO students (first_name, last_name, birth_day, phone) values ('Sasha', 'A', '1996-08-01', 18231837), ('DIma', 'A', '1998-09-01', 13333837), ('Hosty', 'Add', '2000-08-01', 9999)


-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE students RESTART IDENTITY;