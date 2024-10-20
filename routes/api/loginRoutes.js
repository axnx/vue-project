import express from 'express';
import { authenticateToken } from '../../src/services/authMiddleware.js';
import db from '../../db.js';
import bcrypt from 'bcrypt';
//-----------------------------------------------------------------------------
const router = express.Router();
// ENDPOINT /api/login
//-----------------------------------------------------------------------------
// GET /userlogin
// route to retrieve all users
//router.get('/', authenticateToken, (req, res) => {
router.get('/', (req, res) => {
db.all('SELECT * FROM userlogin', [], (err, rows) => {
    if (err) {
    return res.status(500).json({ error: err.message });
    }
    res.json(rows);
});
});
//-----------------------------------------------------------------------------
// GET /user
//
router.get('/user', (req, res) => {
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
// POST /login
// User login API
router.post('/', (req, res) => {
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
// POST /register
// register a account
router.post('/register', async (req, res) => {
    //console.log(req.body);
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
// Export the router
export default router;