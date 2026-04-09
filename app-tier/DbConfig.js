// app-tier/DbConfig.js
module.exports = Object.freeze({
    // Use environment variables for sensitive data, with fallbacks for local testing
    DB_HOST: process.env.DB_HOST || 'database-1.c914...ap-south-1.rds.amazonaws.com', 
    DB_USER: process.env.DB_USER || 'admin',
    DB_PWD: process.env.DB_PWD || 'YOUR_SECURE_PASSWORD', 
    DB_DATABASE: process.env.DB_DATABASE || 'webappdb'
});
