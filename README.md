### Задание по PL/SQL.
Генерация данных в Oracle. Пакет с процедурой создания n новых записей. Загрузить в основную таблицу не менее 100 млн.
***

1. Обрабатывать исключения и писать ошибки в таблицу логирования. Процедура записи ошибок в автономной транзакции.

2. В пакете использовать процедуры и функции и 3 вида параметров (IN, OUT, IN OUT).

3. В пакете использовать функции: case, decode.

4. В пакете использовать коллекции (Ассоциативный массив, Вложенная таблица, Массив VARRAY).

5. В пакете использовать temporary table.

6. В пакете использовать lock table для реализации одновременной работы только одной процедуры (остальные будут ждать окончания).

7. Создать процедуру для массового обновления записей, использовать в ней select for update и nowait (ошибки писать в лог-таблицу). 
Позапускать эту процедуру одновременно из разных сессий увидеть, что данные одновременно может изменять только одна процедура. 
Посмотреть блокировки в вьюшке DBA_DML_LOCKS.

8. Создание мат. вью. on commit с агрегированными данными, использовать аналитическую функцию для ранжирования без пропуска.

9. Создать небольшой тригер над таблицей логирования (например, писать ошибки в другую таблицу).

10. Получения трейсов с помощью ALTER SESSION/SYSTEM SET sql_trace=true; Обработка их в tkprof. Нахождение долгих запросов и создание индексов (если это поможет).

***
#### Для выполнения задания
В базе данных запустить:

1. Скрипты по созданию таблиц (все файлы из папки tables)

2. Скрипты по созданию последовательностей (все файлы из папки sequences)

3. Сприпт по созданию триггера (файл error_trigger.tg в папке triggers)

4. Скрипт для начального заполнения справочных таблиц (init.sql в папке scripts)

5. Скрипт объявления пакета (файл BOOKING_GENERATOR.pkg в папке package) и скрипт для создания тела пакета (файл BOOKING_GENERATOR_body.pkg в папке package_body)

6. Скрипт для создания mat view (файл matview_with_rank.mv в папке materialized_views) 

Далее наполнить таблицу отелей на требуемое кол-во записей:
>BOOKING_GENERATOR.CHANGE_ROW_IN_HOTEL(100000);

Наполнить таблицу бронирования 1 записью для создания начальной даты заполнения:
>BOOKING_GENERATOR.FILL_BOOKING_BY_PERIOD(1, to_date('01-01-2019', 'DD-MM-YYYY'), to_date('01-01-2019', 'DD-MM-YYYY'));

Далее выполнить скрипт по созданию и запуску Job-а (файл fill_booking.jb из папки jobs)
