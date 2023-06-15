// mysql-config.js

// Configuración de conexión a MySQL Aurora
const mysqlHost = 'databasewordpress-instance-1.cdufmw0hwyde.us-east-1.rds.amazonaws.com:3306';
const mysqlUser = 'admin';
const mysqlPassword = 'Duoc.2022';
const mysqlDatabase = 'nginx';

// Crear una conexión a la base de datos
const mysql = require('mysql');
const connection = mysql.createConnection({
  host: mysqlHost,
  user: mysqlUser,
  password: mysqlPassword,
  database: mysqlDatabase
});

// Exportar la conexión para usarla en otros archivos
module.exports = connection;
