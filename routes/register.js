const router = require("express").Router()
  var crypto = require("crypto")
 var db = require("../database/databaseConnection");
var userId=1;
router.get("/", (req, res) => {
  if (req.user) return res.redirect("/library");
  res.render("register", { user: null, err: null });
});

router.post("/", (req, res, next) => {
  if (req.body.active === "0")
    return res.render("register", { user: null, err: "yes" });
    let usersql = 'INSERT INTO users SET ?';
  const passEncrypted = crypto
      .createHmac("sha256", req.body.password)
      .update(req.body.email)
      .digest("hex"),
    user = {
      user_id:userId++,
      fullName: req.body.name,
      email: req.body.email,
      pass: passEncrypted,
      admin: 1,
      active: 1
    };

  db.query(usersql, user, (err) => {
    if (err) 
    return res.render("register", { user: null, err: "no" });

    db.query(
      `SELECT * FROM users
      WHERE email LIKE ?;`,
      user.email,
      (err, result) => {
        return req.login(result[0], (err) => {
          if (err) return next(err);
          return res.redirect("/library");
        });
      }
    );
  });
});

module.exports = router;
