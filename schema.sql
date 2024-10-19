-- Create userlogin table
CREATE TABLE IF NOT EXISTS userlogin (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
-------------------------------------------
DROP TABLE users;

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vorname TEXT NOT NULL,
  nachname TEXT NOT NULL,
  strasse TEXT NOT NULL,
  plz TEXT NOT NULL,
  ort TEXT NOT NULL
);
-------------------------------------------