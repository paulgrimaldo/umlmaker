var mysql = require('mysql');
var bcrypt = require('bcryptjs');
module.exports = {
    getSignUp: function (req, res, next) {
        return res.render('users/signup');


    },
    postSignUp: function (req, res, next) {
        var salt = bcrypt.genSaltSync(10);
        var password = bcrypt.hashSync(req.body.password, salt);

        var user = {
            email: req.body.email,
            name: req.body.nombre,
            password: password,
            created_at: Date.toString()
        };
        var config = require('.././database/config');

        var db = mysql.createConnection(config);
        db.connect();
        db.query('INSERT INTO users SET ?', user, function (err, rows, fields) {
            if (err) throw  err;
            db.end();
        });
        //envio el mensaje flash
        req.flash('info', 'Se ha registrado correctamente,inicie sesion');
        return res.redirect('/auth/signin');
    },
    getSignIn: function (req, res, next) {
        return res.render('users/signin', {
          message: req.flash('info'),
          authmessage: req.flash('authmessage')
        }
      );
    },
    logout: function (req, res, next) {
        req.logout();

        res.redirect('/auth/signin');

    },
    getUserPanel: function (req, res, next) {
        res.render('users/panel', {
            isAuthenticated: req.isAuthenticated(),
            user: req.user
        });
    }
};
