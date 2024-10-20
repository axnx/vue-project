-- schema.sql
--------------------------------------------------------------------------------
-- userlogin
DROP TABLE IF EXISTS userlogin;
--
CREATE TABLE IF NOT EXISTS userlogin (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
--------------------------------------------------------------------------------
-- users
DROP TABLE IF EXISTS users;
--
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vorname TEXT NOT NULL,
  nachname TEXT NOT NULL,
  strasse TEXT NOT NULL,
  plz TEXT NOT NULL,
  ort TEXT NOT NULL
);
--------------------------------------------------------------------------------
-- version_history
DROP TABLE IF EXISTS version_history;
--
CREATE TABLE IF NOT EXISTS version_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    version TEXT NOT NULL
);
--------------------------------------------------------------------------------
-- settings
DROP TABLE IF EXISTS settings;
--
CREATE TABLE IF NOT EXISTS settings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fieldkey TEXT NOT NULL,
    fieldvalue TEXT NOT NULL,
    fieldname TEXT NOT NULL,
    fieldtype TEXT NOT NULL,
    comment TEXT NOT NULL
);
--------------------------------------------------------------------------------
/*
--kv
--DROP TABLE IF EXISTS kv;
--
CREATE TABLE kv (
    tkey TEXT PRIMARY KEY 
    tvalue TEXT
);
*/
--------------------------------------------------------------------------------
-- login_history
DROP TABLE IF EXISTS login_history;
--
CREATE TABLE login_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    login_time TEXT DEFAULT CURRENT_TIMESTAMP,
    ip_address TEXT,
    status TEXT,
    FOREIGN KEY (user_id) REFERENCES userlogin (id)
);
--------------------------------------------------------------------------------
-- department
DROP TABLE IF EXISTS department;
--
CREATE TABLE department (
    --department_id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL,                    
    --description TEXT,                              
    --location VARCHAR(100),                       
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--------------------------------------------------------------------------------
-- countries
DROP TABLE IF EXISTS countries;
--
CREATE TABLE countries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    code VARCHAR(2),
    continent VARCHAR(50)
);
--------------------------------------------------------------------------------
