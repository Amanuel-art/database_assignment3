var mysql = require('mysql');

var con = mysql.createConnection({
  host:"localhost",
  database:"carrental",
  user:"carRentalUsers",
  password:'lj9CAcfGzSoUMJbQ'
  
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
module.exports = con;