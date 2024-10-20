import express from 'express';
import sqlite3 from 'sqlite3';
import bodyParser from 'body-parser';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import dotenv from 'dotenv';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
//import cors from 'cors'; // Import CORS

dotenv.config(); // Load environment variables

const app = express();
const port = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
//app.use(cors()); // Enable CORS
app.use(express.urlencoded({ extended: true }));

const secretKey = process.env.JWT_SECRET || 'your_jwt_secret';
// Connect to SQLite database (or create one)
const db = new sqlite3.Database(process.env.DB_PATH || './database.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Connected to the SQLite database.');
});

// Get the directory name from the module's URL
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Read the SQL schema from a file
const sqlSchemaPath = path.join(__dirname, 'schema.sql');
const schemaSql = fs.readFileSync(sqlSchemaPath, 'utf-8');

//-----------------------------------------------------------------------------
// Execute the SQL schema
const executeSchema = (schema) => {
  return new Promise((resolve, reject) => {
    db.exec(schema, (err) => {
      if (err) {
        console.error('Error executing SQL schema:', err.message);
        return reject(err);
      }
      console.log('Table created or already exists.');
      resolve();
    });
  });
};
//-----------------------------------------------------------------------------
// Insert initial data from insert_data.sql
const insertInitialData = () => {
  return new Promise((resolve, reject) => {
    const insertDataPath = path.join(__dirname, 'insert_data.sql');
    const insertSql = fs.readFileSync(insertDataPath, 'utf-8');

    db.exec(insertSql, (err) => {
      if (err) {
        console.error('Error inserting initial data:', err.message);
        return reject(err);
      }
      console.log('Initial data inserted successfully.');
      resolve();
    });
  });
};
//-----------------------------------------------------------------------------
// Initialize database
const initializeDatabase = async () => {
  try {
    await executeSchema(schemaSql);
    await insertInitialData();
  } catch (err) {
    console.error('Database initialization failed:', err.message);
  }
};

// Call the initialization function
initializeDatabase();

//-----------------------------------------------------------------------------
// User login API
app.post('/login', (req, res) => {
  const { username, password } = req.body;

  // Find user by email
  db.get('SELECT * FROM userlogin WHERE username = ?', [username], (err, user) => {
      console.log(username);
      if (err) {
          return res.status(500).json({ message: 'Database error' });
      }
      if (!user) {
          return res.status(401).json({ message: 'User not found' });
      }

      // Compare passwords
      bcrypt.compare(password, user.password, (err, match) => {
          if (match) {
              // Create JWT token
              const token = jwt.sign({ id: user.id, username: user.username }, secretKey, { expiresIn: '1h' });
              res.json({ token });
          } else {
              res.status(401).json({ message: 'Invalid password' });
          }
      });
  });
});
//-----------------------------------------------------------------------------
app.post('/register', async (req, res) => {
  const { username, email, password } = req.body;

  try {
      const hashedPassword = await bcrypt.hash(password, 10);
      db.run('INSERT INTO userlogin (username, email, password) VALUES (?, ?, ?)', 
          [username, email, hashedPassword], 
          (err) => {
              if (err) {
                  console.error('Database error during registration:', err.message);
                  return res.status(500).json({ message: 'Database error' });
              }
              res.status(201).json({ message: 'User registered successfully' });
          }
      );
  } catch (error) {
      console.error('Error hashing password:', error.message);
      res.status(500).json({ message: 'Error registering user' });
  }
});
//-----------------------------------------------------------------------------
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
//-----------------------------------------------------------------------------
// GET route to retrieve all users
app.get('/users', (req, res) => {
  db.all('SELECT * FROM users', [], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json(rows);
  });
});
//-----------------------------------------------------------------------------
app.get('/user', (req, res) => {
  const token = req.headers.authorization.split(' ')[1];
  jwt.verify(token, secretKey, (err, decoded) => {
    if (err) {
      return res.status(401).json({ message: 'Unauthorized' });
    }
    db.get('SELECT username, email FROM userlogin WHERE id = ?', [decoded.id], (err, user) => {
      if (err) {
        return res.status(500).json({ message: 'Database error' });
      }
      if (!user) {
        return res.status(404).json({ message: 'User not found' });
      }
      res.json(user);
    });
  });
});
//-----------------------------------------------------------------------------
// Close the database connection when the application exits
process.on('SIGINT', () => {
  db.close((err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Closed the database connection.');
    process.exit(0);
  });
});
//-----------------------------------------------------------------------------
// Start the server
app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
