var mysql = require('mysql');
var bcrypt = require('bcryptjs');
var randtoken = require('rand-token'); // para el codigo de los proyectos
var config = require('.././database/config');
module.exports = {
    getProyectos: function (req, res, next) {
        //obtengo todos los proyectos
        var db = mysql.createConnection(config);
        db.connect();
        db.query('Select proyecto.* from proyecto where proyecto.id_user=? UNION DISTINCT Select proyecto.* from proyecto INNER join proyecto_user on proyecto.id = proyecto_user.id_proyecto where proyecto_user.id_user=?', [req.user.id, req.user.id], function (err, rows, fields) {
            if (err) throw  err;
            db.end();

            //console.log( rows);

            return res.render('proyectos/index', {
                isAuthenticated: req.isAuthenticated(),
                user: req.user,
                message: req.flash('info'),
                proyectos: rows
            });

        });


    },
    createProyecto: function (req, res, next) {

        return res.render('proyectos/create');
    },
    postProyectos: function (req, res, next) {

        proyecto = {
            nombre: req.body.name,
            descripcion: req.body.descripcion,
            codigo: randtoken.generate(16),
            id_user: req.user.id,
            fecha_creacion: new Date()
        };

        var db = mysql.createConnection(config);
        db.connect();
        db.query('INSERT INTO proyecto SET ?', proyecto, function (err, rows, fields) {
            if (err) throw  err;
            db.end();
        });
        //envio el mensaje flash
        req.flash('info', 'Se ha registrado correctamente un nuevo proyecto');
        return res.redirect('/proyectos');
    },
    ingresarSala: function (req, res, next) {
        //obtengo el proyecto de la sala donde esta ingresando y de paso le envio todos los mensajes
        var db = mysql.createConnection(config);
        db.connect();
        var proyecto;
        db.query('SELECT * FROM proyecto WHERE  id=?', req.params.id, function (err, rows, fields) {
            if (err) throw  err;
            db.end();
            if (rows.length > 0) {
                proyecto = rows[0];
                // return res.render('editor/index',{
                //     proyecto:proyecto,
                //     user:req.user
                //     // mensajes:mensajes
                // });
            }
        });

        var mensajes;
        db.query('SELECT users.name,messages.message FROM messages,users WHERE messages.user_id=users.id and  id_proyecto=? order by messages.id asc', req.params.id, function (err, rows, fields) {
            if (err) throw  err;
            if (rows.length > 0) {
                mensajes = rows;
                //console.log(rows);
            } else {
                mensajes = null;
            }
            return res.render('editor/index', {
                proyecto: proyecto,
                user: req.user,
                mensajes: mensajes
            });
        });


    },
    ingresarDesigner: function (req, res, next) {
        //console.log('proyecto:'  + req.params.id);
        //console.log(req.user);

        var db = mysql.createConnection(config);
        db.connect();
        var proyecto= '';
        db.query('SELECT * FROM proyecto WHERE  id=?', req.params.id, function (err, rows, fields) {
            if (err) throw  err;
            if (rows.length > 0) {
                proyecto = rows[0];
                var mensajes;
                db.query('SELECT users.name,messages.message FROM messages,users WHERE messages.user_id=users.id and  id_proyecto=? order by messages.id asc', req.params.id, function (err, rows, fields) {
                    if (err) throw  err;
                    db.end();
                    if (rows.length > 0) {
                        mensajes = rows;
                        //console.log(rows);
                    } else {
                        mensajes = null;
                    }
                    return res.render('editor/designer', {
                        proyecto: proyecto,
                        user: req.user,
                        mensajes: mensajes
                    });
                });
            }
        })

    },
    addfriend: function (req, res, next) {
        console.log('Adding ' + req.body.email + ' to  the current project : ' + req.body.id_proyecto);
        var db = mysql.createConnection(config);
        db.connect();
        db.query('SELECT * FROM users WHERE  email=?', req.body.email, function (err, rows, fields) {
            if (err) {
                throw  err;
                db.end();
            }
            console.log(rows);
            if (rows.length > 0) {
                var user = rows[0];
                //verifiy if the user is already added
                db.query('SELECT * FROM proyecto_user WHERE id_user=? and id_proyecto=?', [user.id, req.body.id_proyecto], function (err, rows, fields) {
                    if (err) throw  err;
                    if (rows.length > 0) {
                        return res.send(user.email + ' ya esta participando en el proyecto');
                    } else {
                        data = {
                            id_user: user.id,
                            id_proyecto: req.body.id_proyecto,
                            fecha_ingreso: new Date()
                        };
                        db.query('INSERT INTO proyecto_user SET ?', data, function (err, rows, fields) {
                            if (err) throw  err;
                            db.end();
                        });
                        return res.send(user.email + ' added correctly');
                    }
                });
            } else {
                /// user not exist
                return res.send('Contacto no encontrado');
            }

        });
    },

    addproject: function (req, res, next) {
        var user = req.user;
        var db = mysql.createConnection(config);
        db.connect();
        db.query('SELECT * FROM proyecto WHERE  codigo=?', req.body.codigo, function (err, rows, fields) {
            if (err) {
                throw  err;
                db.end();
            }
            if (rows.length > 0) {
                var proyecto = rows[0];
                //verifiy if the user is already added
                db.query('SELECT * FROM proyecto_user WHERE id_user=? and id_proyecto=?', [user.id, proyecto.id], function (err, rows, fields) {
                    if (err) throw  err;
                    if (rows.length > 0) {
                        return res.send(user.email + ' ya esta participando en el proyecto');
                    } else {
                        data = {
                            id_user: user.id,
                            id_proyecto: proyecto.id,
                            fecha_ingreso: new Date()
                        };
                        db.query('INSERT INTO proyecto_user SET ?', data, function (err, rows, fields) {
                            if (err) throw  err;
                            db.end();
                        });
                        return res.send(user.email + ' registrado en ' + proyecto.nombre);
                    }
                });
            } else {
                /// project not exist
                return res.send('El codigo proporcionado no corresponde a \n' +
                    'un proyecto');
            }
        });
    }
};
