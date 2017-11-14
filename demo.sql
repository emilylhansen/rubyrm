CREATE TABLE mottos (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE houses (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  motto_id INTEGER,

  FOREIGN KEY(motto_id) REFERENCES mottos(id)
);

CREATE TABLE members (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  house_id INTEGER,

  FOREIGN KEY(house_id) REFERENCES houses(id)
);

INSERT INTO
  mottos (id, name)
VALUES
  (1, "Winter is Coming"),
  (2, "A Lannister always pays his debts"),
  (3, "Fire and Blood");

INSERT INTO
  houses (id, name, motto_id)
VALUES
  (1, "Stark", 1),
  (2, "Lannister", 2),
  (3, "Targaryen", 3),
  (4, "Tyrell", null);

INSERT INTO
  members (id, fname, lname, house_id)
VALUES
  (1, "Arya", "Stark", 1),
  (2, "Jon", "Snow", 1),
  (3, "Tyrion", "Lannister", 2),
  (4, "Cersei", "Lannister", 2),
  (5, "Daenerys", "Targaryen", 3),
  (6, "Olenna", "Tyrell", null);
