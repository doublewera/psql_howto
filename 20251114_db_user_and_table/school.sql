-- Комментарий начинается с двух минусов

-- Создание таблицы

CREATE TABLE timetable(
    dtstart timestamp,
    dtend timestamp,
    thesubject varchar(1024)
);

-- Добавление информации в таблицу

INSERT INTO timetable(dtstart, dtend, thesubject)
VALUES
    ('2025-11-14 09:00', '2025-11-14 09:45', 'Математика'),
    ('2025-11-14 09:55', '2025-11-14 10:40', 'Русский язык'),
    ('2025-11-14 10:50', '2025-11-14 11:35', 'Химия'),
    ('2025-11-14 11:55', '2025-11-14 12:40', 'География'),
    ('2025-11-14 12:50', '2025-11-14 13:35', 'Физкультура')
;

-- Поиск информации

select * from timetable;
select count(*) from timetable;
select dtstart from timetable where thesubject='Химия';

-- Упорядочивание при поиске

select * from timetable order by dtstart;

-- Редактирование информации

update timetable set dtend='2025-11-14 11:50' where thesubject='Химия';

-- Удаление информации

delete from timetable where thesubject='Физкультура';

-- Вложенные запросы

delete from timetable where dtstart=(
    select min(dtstart) from timetable);