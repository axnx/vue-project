// authMiddleware.js
//
import jwt from 'jsonwebtoken';
const secretKey = process.env.JWT_SECRET || 'your_jwt_secret';

export const authenticateToken = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1]; // Bearer <token>
    if (token == null) return res.sendStatus(401); // No token

    jwt.verify(token, secretKey, (err, user) => {
        if (err) {
            console.error('Token verification error:', err); // Log the error for debugging
            return res.sendStatus(403); // Token no longer valid
        }
        req.user = user; // Store user info in request
        next(); // Pass to the next middleware
    });
    /*
    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, user) => {
      if (err) return res.sendStatus(403); // Token no longer valid
      req.user = user;
      next(); // Pass to the next middleware
    });
    */
};
