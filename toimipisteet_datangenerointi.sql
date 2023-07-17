--liiketoimipisteiden datat
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '206 Colorado Plaza', geography::Point(55.595384, 12.979575, 4326), 'Goose', 'Malmö', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '5 Armistice Parkway', geography::Point(59.861329, 17.627299, 4326), 'Bear', 'Uppsala', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '8 Bowman Court', geography::Point(37.386153, -5.975946, 4326), 'Cat', 'Sevilla', 'Spain');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '15965 Melrose Street', geography::Point(41.397080, 2.195137, 4326), 'Monkey', 'Barcelona', 'Spain');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '1 Blaine Drive', geography::Point(50.939086, 6.951966, 4326), 'Fox', 'Köln', 'Germany');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '64 Huxley Place', geography::Point(52.528113, 13.410125, 4326), 'Flamingo', 'Berlin', 'Germany');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '84 Little Fleur Hill', geography::Point(45.751222, 4.843505, 4326), 'Zebra', 'Lyon', 'France');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '45471 Harper Court', geography::Point(43.713050, 7.263739, 4326), 'Capybara', 'Nizza', 'France');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '359 Emmet Point', geography::Point(60.449035, 22.257044, 4326), 'Otter', 'Turku', 'Finland');
insert into toimipiste (toimipiste_tyyppi, osoite, koordinaatit, nimi, kaupunki, maa) values ('liike', '90 Duke Crossing', geography::Point(61.500292, 23.753137, 4326), 'Lion', 'Tampere', 'Finland');
 
--itsepalvelutoimipisteiden datat
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(55.575530, 12.976984, 4326), 'Malmö', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(55.593872, 13.015783, 4326), 'Malmö', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(55.593305, 13.071286, 4326), 'Malmö', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(55.579834, 13.078879, 4326), 'Malmö', 'Sweden');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(59.867861, 17.673092, 4326), 'Uppsala', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(59.890657, 17.636552, 4326), 'Uppsala', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(59.855374, 17.623120, 4326), 'Uppsala', 'Sweden');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(59.861329, 17.627299, 4326), 'Uppsala', 'Sweden');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(37.410181, -5.962137, 4326), 'Sevilla', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(37.382214, -5.949737, 4326), 'Sevilla', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(37.370082, -5.986244, 4326), 'Sevilla', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(37.386153, -5.975946, 4326), 'Sevilla', 'Spain');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(41.411547, 2.219505, 4326), 'Barcelona', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(41.356681, 2.086521, 4326), 'Barcelona', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(41.416301, 2.228849, 4326), 'Barcelona', 'Spain');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(41.397080, 2.195137, 4326), 'Barcelona', 'Spain');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(50.936176, 6.975708, 4326), 'Köln', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(50.933094, 6.947157, 4326), 'Köln', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(50.948791, 6.960693, 4326), 'Köln', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(50.945279, 6.938626, 4326), 'Köln', 'Germany');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(52.530925, 13.341157, 4326), 'Berlin', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(52.492079, 13.427934, 4326), 'Berlin', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(52.556222, 13.406061, 4326), 'Berlin', 'Germany');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(52.546628, 13.350839, 4326), 'Berlin', 'Germany');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(45.775469, 4.865764, 4326), 'Lyon', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(45.755025, 4.792501, 4326), 'Lyon', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(45.745674, 4.845036, 4326), 'Lyon', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(45.748168, 4.889351, 4326), 'Lyon', 'France');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(43.695329, 7.253528, 4326), 'Nizza', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(43.699071, 7.273623, 4326), 'Nizza', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(43.705399, 7.274689, 4326), 'Nizza', 'France');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(43.708811, 7.257182, 4326), 'Nizza', 'France');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(60.451382, 22.251185, 4326), 'Turku', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(60.455662, 22.271652, 4326), 'Turku', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(60.451097, 22.285972, 4326), 'Turku', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(60.438575, 22.261021, 4326), 'Turku', 'Finland');

insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(61.495327, 23.754328, 4326), 'Tampere', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(61.503964, 23.782707, 4326), 'Tampere', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(61.494321, 23.784104, 4326), 'Tampere', 'Finland');
insert into toimipiste (toimipiste_tyyppi, koordinaatit, kaupunki, maa) values ('itsepalvelu', geography::Point(61.496929, 23.741703, 4326), 'Tampere', 'Finland');

--Testausta varten:

--DECLARE @g geography;
--DECLARE @h geography;
--SET @g = (select koordinaatit from toimipiste where toimipiste_id = 1);
--SET @h = (select koordinaatit from toimipiste where toimipiste_id = 2);
--SELECT @g.STDistance(@h);
