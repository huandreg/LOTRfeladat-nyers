CREATE DATABASE IF NOT EXISTS lotrkar CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE lotrkar;

CREATE TABLE karakterek (
    id INT PRIMARY KEY,
    nev VARCHAR(50),
    faj VARCHAR(50),
    osztaly VARCHAR(50),
    leiras VARCHAR(500)
);

CREATE TABLE statok (
    id INT PRIMARY KEY,
    karakterId INT,
    ero INT,
    gyorsasag INT,
    ugyesseg INT,
    allokepesseg INT,
    intelligencia INT,
    FOREIGN KEY (karakterId) REFERENCES karakterek(id)
);

INSERT INTO karakterek VALUES
(1, 'Aragorn', 'Dúnadán', 'Vándor', 'Ügyeletes baszogány, kardforgató ork-tömeggyilkos, ja, és a fél emberiség királya.'),
(2, 'Boromir', 'Gondori ember', 'Harcos', 'Harcos kapitány, gyűrű-bolond, később Lurtz nyíltartónak használja.'),
(3, 'Gandalf', 'Maia', 'Mágus', 'Mágiahasználó bölcs, félúton egy Isten és egy csöves között.'),
(4, 'Legolas', 'Bakacsinerdei tünde', 'Íjász', 'Géppuskakezű íjász, ha kapott volna egy géppuskát, egy könyv alatt vége lett volna a sztorinak.'),
(5, 'Gimli', 'Erebori törp', 'Harcos', 'Mogorva törp, szabadidejében orkokat szeletel, kapzsi bányász, gyengéje a mithrill.'),
(6, 'Trufa', 'Kici hobbitocka', 'Élő pajzs', 'Hobbit létére egész értelmes, noha a sztorit nem ő mozdítja előre általában.'),
(7, 'Pippin', 'Kici hobbitocka', 'Élő pajzs', 'Vicces hobbitocska, leginkább a zabálásban tűnik ki.'),
(8, 'Frodó', 'Kici hobbitocka', 'Gyűrűhordozó', 'A leginkompetensebb karakter, tényleg csak arra jó hogy cipeljen valamit.'),
(9, 'Samu', 'Kici hobbitocka', 'Gyűrűhordozó-testőr', 'A Legbaszogányabb hobbit, még az orkokat is gyilkolássza, lelkes hobbikertész.'),
(10, 'Gollam', 'Coffadt hobbitocka', 'Ügyeletes troll', 'Rommá csoffadt hobbit, a nemesfémek megszállotja, kedvence a "Drágaszág".'),
(11, 'Lurtz', 'Uruk-hai', 'Ork kapitány', 'Az Uruk-hai orkok első számú főnöke, Aragorn kicsit levágta a fejét, de előtte még megszórta Boromirt.'),
(12, 'Ugluk', 'Uruk-hai', 'Ork kapitány', 'Rohan mezején szaladgáló Uruk-hai vezér, Trufát és Pippint cipeli mint két csomagot, végül fűbe harap ő is.'),
(13, 'Grishnákh', 'Mordori ork', 'Ork felderítő', 'Mordori ambíciózus ork, a Gyűrűt is lenyúlná a társai elől, Pippint meg megölné, végül Szilszakáll tapossa meg.'),
(14, 'Gorbag', 'Mordori ork', 'Ork tiszt', 'Minas Morgul járőrparancsnoka, ork létére egész okos, Samu öli meg.');

INSERT INTO statok VALUES
(1, 1, 15, 16, 16, 15, 14),
(2, 2, 16, 15, 15, 15, 13),
(3, 3, 13, 13, 14, 14, 18),
(4, 4, 14, 17, 17, 14, 14),
(5, 5, 17, 14, 15, 16, 13),
(6, 6, 12, 14, 14, 12, 13),
(7, 7, 12, 14, 14, 12, 12),
(8, 8, 12, 14, 14, 11, 13),
(9, 9, 12, 14, 14, 13, 12),
(10, 10, 12, 14, 14, 13, 13),
(11, 11, 17, 15, 15, 16, 12),
(12, 12, 16, 14, 15, 16, 13),
(13, 13, 15, 14, 14, 14, 12),
(14, 14, 15, 14, 14, 14, 14);