import dotenv from 'dotenv';
dotenv.config(); // Load environment variables first
import express from 'express';
import bodyParser from 'body-parser';
import db, { initializeDatabase } from './db.js'; 
//-----------------------------------------------------------------------------
const app = express();
const port = process.env.PORT || 3000;
const host = process.env.HOST || 'localhost';

app.use(bodyParser.json());
//app.use(cors()); // Enable CORS
app.use(express.urlencoded({ extended: true }));

console.log('env PORT:', process.env.PORT, ',var PORT:',port );  // Check if the port is loaded
console.log('env HOST:', process.env.HOST, ',var HOST:',host );  // Check if the host is loaded

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
//app.listen(host, port,  () => {
app.listen(port,  () => {
  //console.log(`Backend server is running on http://localhost:${port}`);
  console.log(`Backend server is running on http://${host}:${port}`);
  //console.log(`Server running on http://${HOST}:${PORT}`);
});
//-----------------------------------------------------------------------------