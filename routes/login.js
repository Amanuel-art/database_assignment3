const router = require("express").Router()
var passport = require("passport");

router.get("/", (req, res) => {
  if (req.user) 
  return res.redirect("/library");
  res.render("login", { user: null, err: req.query.err });

});

router.post(
  "/",
  passport.authenticate("local", {
    successRedirect: "/library",
    failureRedirect: "/login?err=yes"
    
  })
);

module.exports = router;
