const express = require('express'); // Import Express.js framework
const cors = require('cors'); // Import CORS
const bodyParser = require('body-parser'); // Import body-parser for parsing request bodies

const app = express(); // Create an Express application instance

// Middleware
app.use(cors()); // Enable CORS for cross-origin requests
app.use(bodyParser.json()); // Parse JSON request bodies

// Basic route
app.get('/api', (req, res) => {
    res.send('Welcome to the Volunteer Portal API!'); // Now this is under '/api' (this is the root API endpoint)
});

// Example route for volunteers
app.get('/api/volunteers', (req, res) => {
  res.json({ message: 'Retrieve a list of volunteers here.' }); // This route is now under '/api/volunteers' (you can use this for retrieving volunteer data)
});

// Start the server
const PORT = 3000; 
app.listen(PORT, () => {
  console.log(`Volunteer Portal API server is running on port ${PORT}`); // Log the server status (you'll see this message in the terminal when the server starts)
});

// Note: For now, the PORT is hardcoded for simplicity. In a production environment,
// sensitive data like API keys or database URLs should be stored in a .env file.

//we use a port because the computers are constantly multi-tasking. 

//listen method

//we use the backtick ` so we can access interpolation

//having access to different libraries and frameworks gives us the tools to use things without us having to create them ourselves.
