--userlogin
DROP TABLE IF EXISTS userlogin;

CREATE TABLE IF NOT EXISTS userlogin (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
--------------------------------------------------------------------------------
--users
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vorname TEXT NOT NULL,
  nachname TEXT NOT NULL,
  strasse TEXT NOT NULL,
  plz TEXT NOT NULL,
  ort TEXT NOT NULL
);
--------------------------------------------------------------------------------
--version_history

DROP TABLE IF EXISTS version_history;
CREATE TABLE IF NOT EXISTS version_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    version TEXT NOT NULL
);
--------------------------------------------------------------------------------
--settings
DROP TABLE IF EXISTS settings;
CREATE TABLE IF NOT EXISTS settings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fieldkey TEXT NOT NULL,
    fieldno TEXT NOT NULL,
    fieldname TEXT NOT NULL,
    fieldtype TEXT NOT NULL,
    comment TEXT NOT NULL
);
--------------------------------------------------------------------------------