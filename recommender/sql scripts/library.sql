SHOW DATABASES;
USE bookmate;

CREATE TABLE library (
    LibID VARCHAR(25) PRIMARY KEY,
    id VARCHAR(255) NOT NULL,
    Fave_Books TEXT,
    Wish_List TEXT,
    answers VARCHAR(255),
    FOREIGN KEY (id) REFERENCES users(id)
);

SELECT * FROM library LIMIT 10;

UPDATE library
SET Fave_Books = '059035342X,043935806X', Wish_list = "0439425220,0439064864"
WHERE LibID = 'LIB-20240618081739-f56b8f';

DROP TABLE library;