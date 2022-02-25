 var crypto = require("crypto")
 var passport = require("passport")
 var LocalStrategy = require("passport-local").Strategy
 var authenticationMiddleware = require("./middleware")
 var db = require("../database/databaseConnection");

passport.serializeUser((user, done) => {
  done(null, user.user_id);
});

passport.deserializeUser((user_id, done) => {
  db.query(
    `SELECT user_id, fullName, email, admin, active FROM users
    WHERE user_id LIKE ?;`,
    user_id,
    (err, result) => {
      done(err, result[0]);
    }
  );
});

function initPassport() {
  passport.use(
    "local",
    new LocalStrategy(
      {
        usernameField: "email",
        passwordField: "password",
        passReqToCallback: true,
      },
      (req, usernameField, passwordField, next) => {
        db.query(
          `SELECT * FROM users
      WHERE email LIKE ?
      AND active NOT LIKE 0;`,
          usernameField,
          (err, result) => {
            if (!result.length) return next(null, false);

            const passEncrypted = crypto
              .createHmac("sha256", passwordField)
              .update(usernameField)
              .digest("hex");

            if (result[0].pass !== passEncrypted) return next(null, false);

            return next(null, result[0]);
          }
        );
      }
    )
  );
  passport.authenticationMiddleware = authenticationMiddleware;
}

module.exports = initPassport;
