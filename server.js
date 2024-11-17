// Note: For now, the PORT is hardcoded for simplicity. In a production environment,
// sensitive data like API keys or database URLs should be stored in a .env file.

const express = require('express'); // Import Express.js framework
const cors = require('cors'); // Import CORS 
const bodyParser = require('body-parser'); // Import body-parser for parsing request bodies

const app = express(); // Create an Express application instance

// Middleware
app.use(cors()); // 
app.use(bodyParser.json()); // Parse JSON request bodies

// Basic route
app.get('/', (req, res) => {
    res.send('Welcome to the Volunteer Portal API!'); 
});

// Example route
app.get('/volunteers', (req, res) => {
  res.json({ message: 'Retrieve a list of volunteers here.' }); // Placeholder for future functionality
});

// Start the server
const PORT = 3000; 
app.listen(PORT, () => {
  console.log(`Volunteer Portal API server is running on port ${PORT}`); // Log the server status
});


//we use a port, because the computers are constantly multi-tasking. 

//listen method

//we use the backtick ` so we can access iterpolation

//having access to different libraries and frameworks gives us the tools to use things without us having to create them ourselves. 