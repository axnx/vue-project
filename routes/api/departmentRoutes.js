import express from 'express';
import { authenticateToken } from '../../src/services/authMiddleware.js';
import db from '../../db.js';
//-----------------------------------------------------------------------------
const router = express.Router();
// ENDPOINT /api/department
//-----------------------------------------------------------------------------
// GET /
// GET route to retrieve all users
router.get('/', (req, res) => {
    db.all('SELECT * FROM department', [], (err, rows) => {
      if (err) {
        return res.status(500).json({ error: err.message });
      }
      res.json(rows);
    });
  });
//-----------------------------------------------------------------------------
// Export the router
export default router;