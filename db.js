import sqlite3 from 'sqlite3';
import { fileURLToPath } from 'url';
import fs from 'fs';
import path from 'path';

const db= new sqlite3.Database(process.env.DB_PATH || './database.db', (err) => {
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
export const initializeDatabase = async () => {
  try {
    await executeSchema(schemaSql);
    await insertInitialData();
  } catch (err) {
    console.error('Database initialization failed:', err.message);
  }
};

// Call the initialization function
//initializeDatabase();

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

export default db;