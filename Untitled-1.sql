

CREATE TABLE author (
    id_author int AUTO_INCREMENT,
    firstname text,
    lastname text,
    birthdate varchar (255) NOT NULL,
    author_description text,
    PRIMARY KEY (id_author)
);

INSERT INTO author
VALUES(
    null, "Karel", "Erben", "1920", "Czech author1"
);

INSERT INTO author
VALUES(
    null, "Bohumil", "Hrabal", "1925", "Czech author2"
);

INSERT INTO author
VALUES(
    null, "Milan", "Kundera", "1930", "Czech author3"
);

INSERT INTO author
VALUES(
    null, "Bohumil", "Hrabal", "1935", "Czech author4"
);

INSERT INTO author
VALUES(
    null, "Jaroslav", "Seifert", "1935", "Czech author5"
);



CREATE TABLE book (
    id_book int AUTO_INCREMENT,
    isbn varchar(255) NOT NULL,
    pages varchar(255) NOT NULL,
    book_description text,
    genre text,
    PRIMARY KEY (id_book)
); 

INSERT INTO book
VALUES(
    null, "485519746", "350", "sad story", "romantic"
);
INSERT INTO book(isbn,pages,book_description,genre)
VALUES(
        "46955186", "342", "happy story", "comedy"
);
INSERT INTO book (isbn,pages,book_description,genre)
VALUES(
        "64874119", "456", "dog story", "tragic"
); 
INSERT INTO book (isbn,pages,book_description,genre)
VALUES(
        "564777126", "457", "cats", "bad"
);
INSERT INTO book (isbn,pages,book_description,genre)
VALUES(
        "9871264", "154", "son and dad", "happy"
);
INSERT INTO book (isbn,pages,book_description,genre)
VALUES(
        "12642849", "247", "friends", "depressing"
);




CREATE TABLE genre (
    id_genre int AUTO_INCREMENT,
    title text,
    genre_description text,
    PRIMARY KEY (id_genre)
);

INSERT INTO genre
VALUES(
    null, "Kytice", "Sad"
);

INSERT INTO genre
VALUES(
    null, "Harry Potter", "Magic"
);

INSERT INTO genre
VALUES(
    null, "Lord of the Rings", "War"
);

INSERT INTO genre
VALUES(
    null, "Metro 2033", "Scary"
);

ALTER TABLE author
ADD FOREIGN KEY (id_author)
REFERENCES author(id)
ON DELETE CASCADE;

ALTER TABLE book
ADD FOREIGN KEY (id_book)
REFERENCES book(id)
ON DELETE CASCADE;

ALTER TABLE genre
ADD FOREIGN KEY (id_genre)
REFERENCES genre(id)
ON DELETE CASCADE;


CREATE TABLE book_author (
    book_id int,
    author_id int
);

SELECT firstname, lastname, birthdate, author_description FROM author aut
JOIN book_author bo ON aut.id_author = bo.id_book
