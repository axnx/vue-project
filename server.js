import express from 'express';
import bodyParser from 'body-parser';
import dotenv from 'dotenv';
import db, { initializeDatabase } from './db.js'; 
//-----------------------------------------------------------------------------
dotenv.config(); // Load environment variables

const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());
//app.use(cors()); // Enable CORS
app.use(express.urlencoded({ extended: true }));

// Initialize the database
initializeDatabase();
//-----------------------------------------------------------------------------
//add route files
import loginRoutes from './routes/api/loginRoutes.js';
import userRoutes from './routes/api/userRoutes.js';
import versionRoutes from './routes/api/versionRoutes.js';
import departmentRoutes from './routes/api/departmentRoutes.js';
app.use('/login',loginRoutes);
app.use('/user',userRoutes);
app.use('/version',versionRoutes);
app.use('/department',departmentRoutes);
//-----------------------------------------------------------------------------
// Erreichbarkeit
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});
//-----------------------------------------------------------------------------
// Start the server
app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
//-----------------------------------------------------------------------------