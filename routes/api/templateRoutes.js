import express from 'express';
import { authenticateToken } from '../../src/services/authMiddleware.js';
import db from '../../db.js';
//-----------------------------------------------------------------------------
const router = express.Router();
// ENDPOINT /api/

//-----------------------------------------------------------------------------
// Export the router
export default router;