CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vorname TEXT NOT NULL,
  nachname TEXT NOT NULL,
  strasse TEXT NOT NULL,
  plz TEXT NOT NULL,
  ort TEXT NOT NULL
);
