﻿insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 13, 2, true,  false, 1, false, 3, true);
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 11, 0, true,  true,  0, true,  7, true); 
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 10, 1, false, true,  1, true,  5, true);
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 9,  2, true,  true,  2, true,  0, true);
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 6,  0, true,  true,  2, true,  1, true); 
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 5,  1, true,  true,  0, true,  7, true);
insert into LED (TIPO_PINO, PINO_ARDUINO, COR_LED, LED_ATIVO, ATIVADO_POR_BOTAO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (0, 4,  2, true,  true,  1, false, 0, true);

insert into POTENCIOMETRO (TIPO_PINO, PINO_ARDUINO, EVENTO, ALTERA_EVENTO, EVENTO_INTERVALO, ALTERA_INTERVALO) values (1, 0, 3, true, 3, true);

insert into USUARIO (ID_USUARIO, NOME_USUARIO, DATA_CADASTRO, USUARIO_ATIVO, MONITOR_URL) values (nextval('usuario_seq'), 'Cesar Magalhaes', '2015-04-01 16:16:40.50', true, '192.168.1.50:8080');

insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'Alemanha',    4);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'Suécia',      4);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'França',      4);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'Itália',      4);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'Japão',       2);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'Reino Unido', 4);
insert into PAIS(ID_PAIS, NOME_PAIS, CONTINENTE) values(nextval('pais_seq'), 'EUA',         1);

insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Baviera',            1);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Baden-Württemberg',  1);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Västra Götaland',    2);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Saxônia',            1);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Nord-Pas-de-Calais', 3);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Piemonte',           4);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Berlim',             1);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Shizuoka',           5);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Lancashire',         6);
insert into UF(ID_UF, NOME_UF, ID_PAIS) values(nextval('uf_seq'), 'Michigan',           7);

insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Munique',   1);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Stuttgart', 2);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Hisingen',  3);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Zwickau',   4);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Boulogne',  5);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Turim',     6);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Berlim',    7);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Hamamatsu', 8);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Blackpool', 9);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Detroit',   10);
insert into CIDADE(ID_CIDADE, NOME_CIDADE, ID_UF) values(nextval('cidade_seq'), 'Flint',     10);

insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'BMW',            1);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Mercedes-Benz',  2);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Volvo',          3);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Audi',           4);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Renault',        5);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Fiat',           6);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Volkswagen',     7);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Honda',          8);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Jaguar',         9);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'Ford',           10);
insert into CARRO_MARCA (ID_MARCA, NOME_MARCA, CIDADE_ORIGEM) values (nextval('marca_seq'), 'General Motors', 11);

insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1960, 0,  1, '123.45', true, '1960-01-31 10:01:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1960, 0,  2, '234.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1960, 0,  3, '345.67', true, '1960-02-28 11:02:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1961, 0,  4, '456.78', true, '1961-03-29 12:03:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1961, 0,  5, '567.89', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1961, 0,  6, '1234.5', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1962, 0,  7, '2345.56', true, '1962-04-28 13:04:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1962, 0,  8, '3456.78', true, '1962-05-27 14:05:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1962, 0,  9, '4567.89', true, '1962-06-26 15:06:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1963, 0, 10, '1.23', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1971, 1, 10, '1.34', true, '1971-07-25 16:07:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1996, 1,  9, '1.45', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1961, 1,  8, '1.56', true, '1961-08-24 17:08:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2002, 1,  7, '1.67', true, '2002-09-23 18:09:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1994, 1,  6, '1.78', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1973, 1,  5, '1.89', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1971, 1,  4, '12.34', true, '1971-10-22 10:10:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1973, 1,  3, '12.45', true, '1973-11-21 11:11:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1988, 1,  2, '12.56', true, '1988-12-20 12:12:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1989, 1,  1, '12.67', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1965, 2,  1, '12.78', true, '1965-11-19 13:13:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 2,  2, '12.89', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1978, 2,  3, '2.34', true, '1978-10-18 14:14:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2003, 2,  4, '2.45', true, '2003-09-17 15:15:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1996, 2,  5, '2.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2006, 2,  6, '2.67', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1993, 2,  7, '2.78', true, '1993-08-16 16:16:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1993, 2,  8, '2.89', true, '1993-07-15 10:17:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1973, 2,  9, '3.45', true, '1973-06-14 11:18:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1999, 2, 10, '3.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1993, 3, 10, '3.67', true, '1993-05-13 12:19:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1998, 3,  9, '3.78', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1991, 3,  8, '3.89', true, '1991-06-12 13:20:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1962, 3,  7, '4.56', true, '1962-04-11 14:21:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2006, 3,  6, '4.67', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2005, 3,  5, '4.78', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1999, 3,  4, '4.89', true, '1999-03-10 15:22:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1995, 3,  3, '4.12', true, '1995-02-09 16:23:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1998, 3,  2, '4.23', true, '1998-01-08 17:24:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2005, 3,  1, '4.34', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1964, 4,  1, '4.45', true, '1964-02-07 18:23:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1994, 4,  2, '5.12', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1985, 4,  3, '5.23', true, '1985-03-06 17:22:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1976, 4,  4, '5.34', true, '1976-04-05 16:21:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1994, 4,  5, '5.45', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 5,  6, '5.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1975, 5,  7, '5.67', true, '1975-05-04 15:20:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2005, 5,  8, '5.78', true, '2005-06-03 14:19:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1963, 5,  9, '5.89', true, '1963-07-02 13:18:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1996, 5, 10, '6.12', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1963, 7, 10, '6.23', true, '1963-08-01 12:17:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1983, 7,  9, '6.34', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 2007, 7,  8, '6.45', true, '1999-09-30 11:16:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1999, 7,  7, '6.56', true, '1999-10-29 10:15:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1999, 7,  6, '6.67', false, null);

insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6, 10, '6.78', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  9, '7.12', true, '1982-11-28 08:14:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  8, '7.23', true, '1982-12-27 08:13:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  7, '7.34', true, '1982-11-26 09:12:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  6, '7.45', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  5, '7.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 6,  4, '7.67', true, '1982-10-25 10:11:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1991, 6,  3, '7.78', true, '1991-09-24 11:10:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1991, 6,  2, '8.12', true, '1991-08-23 12:09:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1991, 6,  1, '8.23', false, null);

insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1991, 8,  1, '8.45', true, '1991-07-22 13:08:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1982, 8,  2, '8.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1979, 8,  3, '8.67', true, '1979-06-21 14:07:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1960, 8,  4, '8.78', true, '1960-05-20 15:06:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1968, 8,  5, '8.89', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 8,  6, '8.9', true, '1972-04-19 16:05:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 8,  7, '9.12', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 8,  8, '9.23', true, '1972-03-18 17:04:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 8,  9, '9.34', true, '1972-02-17 18:03:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 8, 10, '9.45', false, null);

insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  1, '9.56', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  2, '9.67', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  3, '9.78', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  4, '9.89', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  5, '9.9', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  6, '10', false, null);
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  7, '11', true, '1972-01-16 10:01:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  8, '12', true, '1972-01-15 11:59:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9,  9, '13', true, '1972-02-14 12:58:52.69');
insert into CARRO (ID_CARRO, ANO, COR, ID_MARCA, PRECO, VENDIDO, DATA_VENDA) values (nextval('carro_seq'), 1972, 9, 10, '14', false, null);