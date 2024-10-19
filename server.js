import express from 'express';
import sqlite3 from 'sqlite3';
import bodyParser from 'body-parser';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.json());
app.use(express.urlencoded({ extended: true }));

// Connect to SQLite database (or create one)
//const db = new sqlite3.Database(':memory:', sqlite3.OPEN_READWRITE, (err) => {
const db = new sqlite3.Database('./database.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Connected to the SQLite database.');
});

// Get the directory name from the module's URL
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
// Lese das SQL-Schema aus einer Datei
const sqlSchemaPath = path.join(__dirname, 'schema.sql');
const schemaSql = fs.readFileSync(sqlSchemaPath, 'utf-8');


// SQL-Schema ausführen
db.run(schemaSql, (err) => {
    if (err) {
      return console.error('Error executing SQL schema:', err.message);
    }
    console.log('Table created or already exists.');
  });

// Route to handle form data submission
app.post('/submit', (req, res) => {
    const { vorname, nachname, strasse, plz, ort } = req.body;
    
    db.run(
      'INSERT INTO users (vorname, nachname, strasse, plz, ort) VALUES (?, ?, ?, ?, ?)', 
      [vorname, nachname, strasse, plz, ort],
      function (err) {
        if (err) {
          return res.status(500).json({ error: err.message });
        }
        res.json({ message: 'Benutzer erfolgreich gespeichert', id: this.lastID });
      }
    );
  });

  // GET-Route zum Abrufen aller Benutzer
app.get('/users', (req, res) => {
  db.all('SELECT * FROM users', [], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json(rows);
  });
});


// Start the server
app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
