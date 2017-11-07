CREATE TABLE crops (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER,

  FOREIGN KEY(owner_id) REFERENCES farmer(id)
);

CREATE TABLE farmers (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  state_id INTEGER,

  FOREIGN KEY(state_id) REFERENCES farmer(id)
);

CREATE TABLE states (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO
  states (id, name)
VALUES
  (1, "California"), (2, "Florida");

INSERT INTO
  farmers (id, fname, lname, state_id)
VALUES
  (1, "Monica", "Gellar", 1),
  (2, "Chandler", "Bing", 1),
  (3, "Pheobe", "Buffay", 2),
  (4, "Joey", "Tribianni", NULL);

INSERT INTO
  crops (id, name, owner_id)
VALUES
  (1, "Corn", 1),
  (2, "Cotton", 2),
  (3, "Beef", 3),
  (4, "Veal", 3),
  (5, "Soybeans", NULL);
