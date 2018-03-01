var mysql = require("mysql");

function REST_ROUTER(router, connection, md5) {
  var self = this;
  self.handleRoutes(router, connection, md5);
}

REST_ROUTER.prototype.handleRoutes = function(router, connection, md5) {
  router.get("/", function(req, res) {
    res.json({"Message" : "Welcome to the API"});
  });

  router.get("/Schools/", function(req, res) {
    var query = "SELECT * FROM ??";
    var table = ["School"];
    query = mysql.format(query, table);
    connection.query(query, function(err, rows) {
      if (err) {
        res.json({"Error" : true, "Message" : "Error executing MySQL query"});
      } else {
        res.json({"Error" : false, "Message" : "Success", "Nodes" : rows});
      }
    });
  });

  router.get("/Dept/", function(req, res) {
    var query = "SELECT * FROM ??";
    var table = ["Dept"];
    query = mysql.format(query, table);
    connection.query(query, function(err, rows) {
      if (err) {
        res.json({"Error" : true, "Message" : "Error executing MySQL query"});
      } else {
        res.json({"Error" : false, "Message" : "Success", "Nodes" : rows});
      }
    });
  });

  router.get("/Proffesor/", function(req, res) {
    var query = "SELECT * FROM ??";
    var table = ["Proffesor"];
    query = mysql.format(query, table);
    connection.query(query, function(err, rows) {
      if (err) {
        res.json({"Error" : true, "Message" : "Error executing MySQL query"});
      } else {
        res.json({"Error" : false, "Message" : "Success", "Nodes" : rows});
      }
    });
  });

  router.get("/ProfToDept/", function(req, res) {
    var query = "SELECT * FROM ??";
    var table = ["ProfToDept"];
    query = mysql.format(query, table);
    connection.query(query, function(err, rows) {
      if (err) {
        res.json({"Error" : true, "Message" : "Error executing MySQL query"});
      } else {
        res.json({"Error" : false, "Message" : "Success", "Nodes" : rows});
      }
    });
  });

  router.get("/DeptToSchool/", function(req, res) {
    var query = "SELECT * FROM ??";
    var table = ["DeptToSchool"];
    query = mysql.format(query, table);
    connection.query(query, function(err, rows) {
      if (err) {
        res.json({"Error" : true, "Message" : "Error executing MySQL query"});
      } else {
        res.json({"Error" : false, "Message" : "Success", "Nodes" : rows});
      }
    });
  });


}

module.exports = REST_ROUTER;
