const router = require("express").Router()
  var db = require("../database/databaseConnection");
   var reserve_id=1;
router.get("/", (req, res) => {
  res.redirect("/");
});

router.get("/:vehicle_id", (req, res) => {
  db.query(
    `SELECT * FROM cars
    WHERE car_id LIKE ?
    AND active NOT LIKE 0;`,
    req.params.vehicle_id,
    (err, result) => {
      if (!result.length)
        return res.render("page_not_found", { user: req.user });
      else {
        db.query(
          `SELECT car_id, photo, model FROM cars
        WHERE car_id NOT LIKE ?
        AND active NOT LIKE 0
        ORDER BY RAND()
        LIMIT 10;`,
          req.params.vehicle_id,
          (err1, result1) => {
            if (req.user) {
              db.query(
                `SELECT * FROM reservation
            WHERE car_id LIKE ?
            AND user_id LIKE ?
            AND DATE(dateOut)>=CURDATE()
            AND active NOT LIKE 0;`,
                [req.params.vehicle_id, req.user.user_id],
                (err2, result2) => {
                  return res.render("vehicle", {
                    car: result[0],
                    carsArr: result1,
                    resv: result2[0],
                    user: req.user,
                  });
                }
              );
            } else
              return res.render("vehicle", {
                car: result[0],
                carsArr: result1,
                resv: null,
                user: req.user,
              });
          }
        );
      }
    }
  );
});

router.post("/add/:car_id", (req, res) => {
  if (!req.user) return res.redirect("/");

  const resv = {
    idReservation:reserve_id++,
    car_id: req.params.car_id,
    userFullName: req.user.fullName,
    user_id: req.user.user_id,
    fullPrice: req.body.numbers,
    dateIn: req.body.dateIn,
    dateOut: req.body.dateOut,
    active: 1
  };

  db.query(`INSERT into reservation SET ?`, resv, (err) => {
    if (err) return res.send({ code: 400, failed: __print("add", err) });
    return res.redirect("/library?res=add");
  });
});

router.post("/edit/:res_id/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `UPDATE reservation
    SET fullPrice=?,
      dateIn=?,
      dateOut=?
    WHERE idReservation LIKE ?;`,
    [req.body.numbers, req.body.dateIn, req.body.dateOut, req.params.res_id],
    (err) => {
      if (err) return res.send({ code: 400, failed: __print("edit", err) });
      return res.redirect("/library?res=edit");
    }
  );
});

router.post("/rem/:res_id/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `DELETE FROM reservation
    WHERE idReservation LIKE ?;`,
    req.params.res_id,
    (err) => {
      if (err) return res.send({ code: 400, failed: __print("delete", err) });
      return res.redirect("/library?res=del");
    }
  );
});

function __print(str, err) {
  return "It wasn't possible to " + str + " the data! Due to " + err;
}

module.exports = router;
