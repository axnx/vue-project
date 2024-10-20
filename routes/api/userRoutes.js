import express from 'express';
import { authenticateToken } from '../../src/services/authMiddleware.js';
import db from '../../db.js';
//-----------------------------------------------------------------------------
const router = express.Router();
// ENDPOINT /api/users
//-----------------------------------------------------------------------------
// GET /users
// GET route to retrieve all users
router.get('/', (req, res) => {
    db.all('SELECT * FROM users', [], (err, rows) => {
      if (err) {
        return res.status(500).json({ error: err.message });
      }
      res.json(rows);
    });
  });
//-----------------------------------------------------------------------------
//GET /submit
// Route to handle form data submission
router.post('/submit', (req, res) => {
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
// Export the router
export default router;