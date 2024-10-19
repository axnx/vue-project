import express from 'express';
import sqlite3 from 'sqlite3';
import bodyParser from 'body-parser';

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.json());
app.use(express.urlencoded({ extended: true }));

// Connect to SQLite database (or create one)
const db = new sqlite3.Database('./database.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Connected to the SQLite database.');
});

// Create a table if it doesn't exist
db.run(`CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vorname TEXT,
  nachname TEXT
)`);

// Route to handle form data submission
app.post('/submit', (req, res) => {
  const { vorname, nachname } = req.body;
  db.run('INSERT INTO users (vorname, nachname) VALUES (?, ?)', [vorname, nachname], function (err) {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ message: 'Benutzer erfolgreich gespeichert', id: this.lastID });
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
