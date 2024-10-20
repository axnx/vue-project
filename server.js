import express from 'express';
import bodyParser from 'body-parser';
import dotenv from 'dotenv';
//import cors from 'cors'; // Import CORS
import { authenticateToken } from './src/services/authMiddleware.js';
import db from './db.js';

dotenv.config(); // Load environment variables

const app = express();
const port = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
//app.use(cors()); // Enable CORS
app.use(express.urlencoded({ extended: true }));
//-----------------------------------------------------------------------------
//add route files
import loginRoutes from './routes/api/loginRoutes.js';
import userRoutes from './routes/api/userRoutes.js';
import versionRoutes from './routes/api/versionRoutes.js';
app.use('/login',loginRoutes);
app.use('/user',userRoutes);
app.use('/version',versionRoutes);

// app.get('/version', (req, res) => {
//   db.all('SELECT * FROM version_history', [], (err, rows) => {
//     if (err) {
//       return res.status(500).json({ error: err.message });
//     }
//     res.json(rows);
//   });
// });

//-----------------------------------------------------------------------------
// Start the server
app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
//-----------------------------------------------------------------------------