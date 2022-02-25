var express = require("express");
var bodyParser = require("body-parser");
var path = require("path");
var logger = require("morgan");
var createError = require("http-errors");
var app = express();
app.use(bodyParser.urlencoded({ extended: true }));
var passport = require("passport");
var session = require("express-session");
var cookieParser = require("cookie-parser");

app.set("views", path.join(__dirname, "views"));

app.set("view engine", "ejs");
app.use(logger("dev"));
app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));

app.use(
  session({
    secret: "secret",
    name: "session_id",
    saveUninitialized: false,
    resave: true,
    cookie: { maxAge: Date.now() + 60 * 1000 * 30 * 2 },
  })
);
app.use(passport.initialize());
app.use(passport.session());
app.use("/", require("./routes"));
app.use("/data", require("./routes/data"));
app.use("/admin", require("./routes/admin"));
app.use("/login", require("./routes/login"));
app.use("/logout", require("./routes/logout"));
app.use("/vehicle", require("./routes/vehicle"));
app.use("/contact", require("./routes/contact"));
app.use("/catalog", require("./routes/catalog"));
app.use("/library", require("./routes/library"));
app.use("/profile", require("./routes/profile"));
app.use("/register", require("./routes/register"));
app.use("/terms-of-use", require("./routes/termOfUseRout"));
app.use("/password-help", require("./routes/passwordRout"));

require("./auth").init(app);
// page not found
app.get("*", (req, res) => {
  res.render("page_not_found", { user: req.user });
});

// catch 404 and forward to error handler
app.use((req, res, next) => {
  next(createError(404));
});
app.use((err, req, res, next) => {
  res.status(err.status || 500);
  res.send(err.message || "Internal Server error");
});
let port = 8000;
app.listen(port);
console.log("Server is listening on port 8000");
