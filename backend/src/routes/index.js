// src/routes/index.js
const express = require('express');
const router = express.Router();

// Sample route
router.get('/', (req, res) => {
    res.send('Welcome to the Volunteer Portal API');
});

module.exports = router;
