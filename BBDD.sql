-- Base de datos: `api_proyecto_integrador`
CREATE DATABASE api_proyecto_integrador CHARACTER SET Latin1 COLLATE latin1_spanish_ci;
use api_proyecto_integrador;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `users`
CREATE TABLE users(
  cod_user int(11) NOT NULL,
  name varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  surname varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  email varchar(350) COLLATE latin1_spanish_ci NOT NULL,
  birthday date NOT NULL,
  password varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  primary key (cod_user)
)engine = innodb;

-- Estructura de tabla para la tabla `notes`
CREATE TABLE notes (
  cod_note int(11) NOT NULL AUTO_INCREMENT,
  tittle varchar(300) COLLATE latin1_spanish_ci NOT NULL,
  content text COLLATE latin1_spanish_ci NOT NULL,
  creation_date datetime NOT NULL,
  modification_date datetime NOT NULL,
  cod_user int(11) NOT NULL,
  foreign key (cod_user) references users(cod_user) on delete cascade on update cascade,
  primary key (cod_note)
) ENGINE=InnoDB;

-- --------------------------------------------------------

-- Inserts para la tabla `users`
insert into users (cod_user, name, surname, email, birthday, password) values (1, 'Arney', 'Jarmaine', 'ajarmaine0@aol.com', '1988-01-23', 'sh97xq7HB');
insert into users (cod_user, name, surname, email, birthday, password) values (2, 'Berny', 'Orris', 'borris1@bbc.co.uk', '1995-10-17', 'jJK32DL1');
insert into users (cod_user, name, surname, email, birthday, password) values (3, 'Lesli', 'Aldersley', 'laldersley2@earthlink.net', '1977-02-02', '4vusvcZI9Fji');
insert into users (cod_user, name, surname, email, birthday, password) values (4, 'Michaelina', 'Aslen', 'maslen3@yellowbook.com', '1993-08-28', 'PXZgJjUxU');
insert into users (cod_user, name, surname, email, birthday, password) values (5, 'Clio', 'Palffy', 'cpalffy4@trellian.com', '2000-02-22', '3TapkE');
insert into users (cod_user, name, surname, email, birthday, password) values (6, 'Christos', 'Haydock', 'chaydock5@acquirethisname.com', '1985-01-18', 'MNgNE9ql');
insert into users (cod_user, name, surname, email, birthday, password) values (7, 'Serene', 'Pien', 'spien6@jigsy.com', '1992-09-10', 'EWL4gacoVeM9');
insert into users (cod_user, name, surname, email, birthday, password) values (8, 'Odella', 'Phillip', 'ophillip7@youku.com', '2003-10-07', 'UgO8RInMkuMb');
insert into users (cod_user, name, surname, email, birthday, password) values (9, 'Abby', 'Kippling', 'akippling8@wsj.com', '1999-03-31', 'cmg3tOrZte');
insert into users (cod_user, name, surname, email, birthday, password) values (10, 'Fanya', 'Zoephel', 'fzoephel9@hhs.gov', '1990-09-26', 'Wq3edEk');
insert into users (cod_user, name, surname, email, birthday, password) values (11, 'Emmit', 'McCulley', 'emcculleya@slideshare.net', '1975-01-25', 'kjfOOvd8QAm');
insert into users (cod_user, name, surname, email, birthday, password) values (12, 'Judith', 'Sadat', 'jsadatb@sourceforge.net', '1971-07-09', 'V2warD7L');
insert into users (cod_user, name, surname, email, birthday, password) values (13, 'Micaela', 'Heindrick', 'mheindrickc@samsung.com', '1989-06-03', 'zyU4D8');
insert into users (cod_user, name, surname, email, birthday, password) values (14, 'Lilas', 'Florence', 'lflorenced@deliciousdays.com', '1992-08-12', 'kvDaQi');
insert into users (cod_user, name, surname, email, birthday, password) values (15, 'Rafa', 'Bras', 'rbrase@bigcartel.com', '1998-04-28', 'pLZgyo');
insert into users (cod_user, name, surname, email, birthday, password) values (16, 'Jan', 'Thacke', 'jthackef@ucoz.com', '1975-01-29', 'Zzbsi1o3Us2D');
insert into users (cod_user, name, surname, email, birthday, password) values (17, 'Brucie', 'Dilloway', 'bdillowayg@fotki.com', '1997-03-04', 'P5xM2FHc');
insert into users (cod_user, name, surname, email, birthday, password) values (18, 'Giorgio', 'Jeens', 'gjeensh@usda.gov', '1993-01-04', 'Mdp4MrTad');
insert into users (cod_user, name, surname, email, birthday, password) values (19, 'Maye', 'Matthews', 'mmatthewsi@businessweek.com', '1980-06-02', 'fOQEpRxi3m4G');
insert into users (cod_user, name, surname, email, birthday, password) values (20, 'Melisande', 'Russo', 'mrussoj@sourceforge.net', '1990-02-16', 'PKVcvXNbSc2');
insert into users (cod_user, name, surname, email, birthday, password) values (21, 'Nerissa', 'Cannam', 'ncannamk@dyndns.org', '1994-04-22', 'CSa4o5Df');
insert into users (cod_user, name, surname, email, birthday, password) values (22, 'Britteny', 'Dewi', 'bdewil@salon.com', '1982-08-10', 'bZM10VKZpl');
insert into users (cod_user, name, surname, email, birthday, password) values (23, 'Kenna', 'Kentwell', 'kkentwellm@telegraph.co.uk', '1973-08-11', 'Q3G0EB1FwUM');
insert into users (cod_user, name, surname, email, birthday, password) values (24, 'Lauretta', 'Billingsly', 'lbillingslyn@ted.com', '1976-03-27', 'GgrEr7IZj');
insert into users (cod_user, name, surname, email, birthday, password) values (25, 'Dukie', 'Whitewood', 'dwhitewoodo@umn.edu', '1976-03-15', 'RnDyov');
insert into users (cod_user, name, surname, email, birthday, password) values (26, 'Olive', 'Ketchell', 'oketchellp@yale.edu', '1983-06-02', 'GLlUpc4YNQ');
insert into users (cod_user, name, surname, email, birthday, password) values (27, 'Garik', 'McGeagh', 'gmcgeaghq@ow.ly', '2004-10-19', '0itcbElFC');
insert into users (cod_user, name, surname, email, birthday, password) values (28, 'Elysee', 'McGuane', 'emcguaner@lycos.com', '1979-07-27', 'dYsVJac');
insert into users (cod_user, name, surname, email, birthday, password) values (29, 'Ellery', 'Wingate', 'ewingates@cyberchimps.com', '1996-08-28', 'vkZXXMay2');
insert into users (cod_user, name, surname, email, birthday, password) values (30, 'Genia', 'Caldaro', 'gcaldarot@drupal.org', '1994-07-08', 'P92rBNLgNbc');

-- Inserts para la tabla `notes`
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (1, 'Heartlands', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022-02-16', '2022-02-18', 16);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (2, 'Sleepover', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022-04-25', '2022-04-27', 11);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (3, 'Breach, The (Rupture, La)', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022-03-09', '2022-03-11', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (4, 'Desi Boyz', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2021-05-25', '2021-05-27', 12);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (5, 'No habrá paz para los malvados', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022-09-14', '2022-09-16', 3);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (6, 'Crazy Beautiful You', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', '2021-07-04', '2021-07-06', 18);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (7, 'Nom de code : Rose', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022-08-22', '2022-08-24', 1);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (8, 'Calling, The', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021-02-25', '2021-02-27', 29);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (9, 'Thor: The Dark World', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2021-06-13', '2021-06-15', 24);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (10, 'Are We There Yet?', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2021-09-10', '2021-09-12', 5);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (11, 'Dottie Gets Spanked', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022-06-06', '2022-06-08', 10);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (12, 'Come to the Stable', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021-07-18', '2021-07-20', 21);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (13, 'Ceremony', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022-10-31', '2022-11-02', 17);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (14, 'Edge of Madness', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2022-02-13', '2022-02-15', 19);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (15, 'Royal Scandal, The', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2021-07-03', '2021-07-05', 4);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (16, 'Jane Austen''s Mafia!', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022-06-22', '2022-06-24', 19);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (17, 'Reykjavik Whale Watching Massacre', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021-05-08', '2021-05-10', 6);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (18, 'Adore', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021-08-14', '2021-08-16', 27);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (19, 'Hit and Run (Hit & Run)', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2021-05-12', '2021-05-14', 1);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (20, 'Red Spectacles, The (Jigoku no banken: akai megane)', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2021-08-28', '2021-08-30', 24);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (21, 'Beeswax', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2021-04-17', '2021-04-19', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (22, 'Bernie', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022-12-03', '2022-12-05', 11);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (23, 'Willie & Phil', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022-11-22', '2022-11-24', 17);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (24, 'Hunger Games: Catching Fire, The', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022-02-15', '2022-02-17', 21);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (25, 'Black Pirate, The', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2021-04-03', '2021-04-05', 22);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (26, 'Land That Time Forgot, The', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2021-10-30', '2021-11-01', 4);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (27, 'Patema Inverted', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022-04-15', '2022-04-17', 15);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (28, 'Old Dogs', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022-03-09', '2022-03-11', 7);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (29, 'Dead Husbands', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022-05-07', '2022-05-09', 27);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (30, 'Thank You for Smoking', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022-06-30', '2022-07-02', 12);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (31, 'That Was Then... This Is Now', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2021-08-20', '2021-08-22', 22);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (32, 'Aladdin', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022-03-23', '2022-03-25', 19);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (33, 'Friends, The (Les Amis)', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022-12-20', '2022-12-22', 24);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (34, 'Herb & Dorothy', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2021-06-22', '2021-06-24', 21);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (35, 'Puckoon', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2021-06-12', '2021-06-14', 2);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (36, 'Waterloo Bridge', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022-04-26', '2022-04-28', 14);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (37, 'Sisters (Syostry)', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022-09-07', '2022-09-09', 14);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (38, 'Don''t Look Now', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2022-11-19', '2022-11-21', 20);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (39, 'Jack Frost', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022-11-11', '2022-11-13', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (40, 'April Story', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021-04-28', '2021-04-30', 5);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (41, 'Running Scared', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022-09-16', '2022-09-18', 23);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (42, 'Zathura', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2021-05-30', '2021-06-01', 21);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (43, 'Lovesick', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2021-11-20', '2021-11-22', 11);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (44, 'Night of the Shooting Stars (Notte di San Lorenzo, La)', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022-09-23', '2022-09-25', 29);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (45, 'Operation Daybreak', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2021-08-19', '2021-08-21', 27);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (46, 'Creeping Terror, The (Crawling Monster, The)', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022-11-23', '2022-11-25', 11);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (47, 'Vital', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022-07-12', '2022-07-14', 3);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (48, 'Supernova', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022-12-13', '2022-12-15', 20);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (49, 'Joker', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022-11-09', '2022-11-11', 19);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (50, 'Mo'' Money', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022-05-27', '2022-05-29', 18);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (51, 'Razor''s Edge, The', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022-07-22', '2022-07-24', 15);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (52, 'Devil and Max Devlin, The', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2021-07-11', '2021-07-13', 28);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (53, 'Black Tights (1-2-3-4 ou Les Collants noirs)', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2021-07-13', '2021-07-15', 5);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (54, 'Squanto: A Warrior''s Tale', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022-10-19', '2022-10-21', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (55, 'Clifford', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022-03-19', '2022-03-21', 14);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (56, 'Vivien Leigh: Scarlett and Beyond', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022-05-24', '2022-05-26', 20);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (57, 'Club Fed', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2021-10-12', '2021-10-14', 10);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (58, 'Junkopia', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2021-03-30', '2021-04-01', 16);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (59, 'Palookaville', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2021-09-23', '2021-09-25', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (60, 'Expired', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022-08-02', '2022-08-04', 12);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (61, 'Sunshine', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022-03-16', '2022-03-18', 9);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (62, 'Innocent Affair, An (Don''t Trust Your Husband) (Under Suspicion)', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022-12-17', '2022-12-19', 12);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (63, 'Divorce of Lady X, The', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021-07-15', '2021-07-17', 13);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (64, 'Bad Education (La mala educación)', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022-02-06', '2022-02-08', 17);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (65, 'Run Silent Run Deep', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021-03-30', '2021-04-01', 17);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (66, 'Cheyenne Autumn', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2021-10-22', '2021-10-24', 19);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (67, 'Holiday Spin', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022-08-22', '2022-08-24', 25);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (68, 'Starman', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2021-09-01', '2021-09-03', 4);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (69, 'Snails, The (Escargots, Les)', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2021-10-10', '2021-10-12', 9);
insert into notes (cod_note, tittle, content, creation_date, modification_date, cod_user) values (70, 'Cowboys, The', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022-12-25', '2022-12-27', 17);