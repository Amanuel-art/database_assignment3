const router = require("express").Router()
 var db = require("../database/databaseConnection");

router.get("/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `SELECT * FROM reservation
    JOIN cars ON reservation.car_id=cars.car_id
    WHERE reservation.user_id LIKE ?
    AND DATE(dateOut)>=CURDATE()
    AND reservation.active NOT LIKE 0
    AND cars.active NOT LIKE 0;`,
    req.user.idUser,
    (err, result) => {
      if (!result.length)
        return res.render("library", {
          res: req.query.res,
          carsArr: null,
          user: req.user,
        });
      else
        return res.render("library", {
          res: req.query.res,
          carsArr: result,
          user: req.user,
        });
    }
  );
});

module.exports = router;
