CREATE DATABASE ProjectGame;

CREATE TABLE country (
    id_country INT PRIMARY KEY,
    country_name VARCHAR(100),
    majority_age INT,
    id_currency INT,
    FOREIGN KEY (id_currency) REFERENCES currency(id_currency)
);

CREATE TABLE has_price (
    id_currency INT,
    id_pack INT,
    price INT,
    PRIMARY KEY (id_currency, id_pack),
    FOREIGN KEY (id_currency) REFERENCES currency(id_currency),
    FOREIGN KEY (id_pack) REFERENCES pack(id_pack)
);

CREATE TABLE pack (
    id_pack INT PRIMARY KEY,
    nb_tokens INT,
    pack_begin DATE,
    pack_end DATE,
    pack_name VARCHAR(100)
);
