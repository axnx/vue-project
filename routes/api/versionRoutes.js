import express from 'express';
//import { authenticateToken } from '../src/services/authMiddleware.js';
import db from '../../db.js';
//-----------------------------------------------------------------------------
const router = express.Router();
// ENDPOINT /api/version
//-----------------------------------------------------------------------------
// GET /version 
// route to retrieve all users
router.get('/', (req, res) => {
  db.all('SELECT * FROM version_history', [], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json(rows);
  });
});
//-----------------------------------------------------------------------------
// Export the router
export default router;