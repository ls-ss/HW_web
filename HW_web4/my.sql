/* 	2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
	В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
	Необходимо добавить 5-10 одногруппников в данную таблицу.
	Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
	которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

	Примечание:
	Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", 
	то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
	Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.

	Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql
*/

-- create
CREATE TABLE classmates (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO classmates VALUES (0001, 'Иван', '20', 'Орел');
INSERT INTO classmates VALUES (0002, 'Анна', '18', 'Москва');
INSERT INTO classmates VALUES (0003, 'Елена', '19', 'Казань');
INSERT INTO classmates VALUES (0004, 'Михаил', '30', 'Москва');
INSERT INTO classmates VALUES (0005, 'Павел', '27', 'Москва');
INSERT INTO classmates VALUES (0006, 'Дмитрий', '17', 'Сочи');
INSERT INTO classmates VALUES (0007, 'Елена', '19', 'Москва');
INSERT INTO classmates VALUES (0008, 'Маша', '17', 'Москва');

-- fetch 
SELECT name FROM classmates WHERE address = 'Москва' AND age >= 18 AND age < 30;
