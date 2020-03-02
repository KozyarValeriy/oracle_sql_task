-- наполнение таблицы стран
insert into country values (country_s.NEXTVAL, 'Россия');
insert into country values (country_s.NEXTVAL, 'Казахстан');
insert into country values (country_s.NEXTVAL, 'Белоруссия');
insert into country values (country_s.NEXTVAL, 'Украина');
insert into country values (country_s.NEXTVAL, 'Австралия');
insert into country values (country_s.NEXTVAL, 'Аргентина');
insert into country values (country_s.NEXTVAL, 'Армения');
insert into country values (country_s.NEXTVAL, 'Бельгия');
insert into country values (country_s.NEXTVAL, 'Бразилия');
insert into country values (country_s.NEXTVAL, 'Болгария');
insert into country values (country_s.NEXTVAL, 'Великобритания');
insert into country values (country_s.NEXTVAL, 'Венгрия');
insert into country values (country_s.NEXTVAL, 'Вьетнам');
insert into country values (country_s.NEXTVAL, 'Греция');
insert into country values (country_s.NEXTVAL, 'Египет');
insert into country values (country_s.NEXTVAL, 'Кипр');
insert into country values (country_s.NEXTVAL, 'Китай');
insert into country values (country_s.NEXTVAL, 'Малайзия');
insert into country values (country_s.NEXTVAL, 'Морокко');
insert into country values (country_s.NEXTVAL, 'Польша');
insert into country values (country_s.NEXTVAL, 'США');
insert into country values (country_s.NEXTVAL, 'Швейцария');
insert into country values (country_s.NEXTVAL, 'Шри-Ланка');

-- наполнение таблицы кормления
insert into meal values (1, 'Завтрак');
insert into meal values (2, 'Завтрак, обед');
insert into meal values (3, 'Завтрак, обед, ужин');

-- наполнение таблицы вида депозитов
insert into deposit values (1, 'Без депозита');
insert into deposit values (2, 'Возвратный депозит');
insert into deposit values (3, 'Невозвратный депозит');

-- наполнение таблицы видов бронирования
insert into distribution_channel values (1, 'Турагенство');
insert into distribution_channel values (2, 'Туроператор');
insert into distribution_channel values (3, 'Самостоятельно');
insert into distribution_channel values (4, 'Корпоративный');

-- наполнение таблицы вида комнат
insert into room values (1, 'Стандарт');
insert into room values (2, 'Эконом');
insert into room values (3, 'VIP');

commit;
