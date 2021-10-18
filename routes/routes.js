var express = require('express');
var router = express.Router();
var passport = require('passport');
var controllers = require('.././controllers');//obtendra el index de los controladores
var AuthMiddleware = require('.././middleware/auth');
var path = require('path');
// /* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });

router.get('/', controllers.homecontroller.index);

//rutas de usuarios
router.get('/auth/signup', controllers.UserController.getSignUp);
router.post('/auth/signup', controllers.UserController.postSignUp);
router.get('/auth/signin', controllers.UserController.getSignIn);
router.post('/auth/signin', passport.authenticate('local', {
        successRedirect: '/proyectos',
        failureRedirect: '/auth/signin',
        failureFlash: true
    }
));
router.get('/auth/logout', controllers.UserController.logout)
router.get('/users/panel', AuthMiddleware.isLogged, controllers.UserController.getUserPanel);


router.get('/proyectos', AuthMiddleware.isLogged, controllers.ProyectoController.getProyectos);
router.post('/proyectos', AuthMiddleware.isLogged, controllers.ProyectoController.postProyectos);
router.get('/proyecto/create', AuthMiddleware.isLogged, controllers.ProyectoController.createProyecto);
router.post('/addproject', AuthMiddleware.isLogged, controllers.ProyectoController.addproject);
router.get('/sala/:id', AuthMiddleware.isLogged, controllers.ProyectoController.ingresarSala);
router.get('/designer/:id', AuthMiddleware.isLogged, controllers.ProyectoController.ingresarDesigner);
router.post('/addfriend', AuthMiddleware.isLogged, controllers.ProyectoController.addfriend);


router.get('/images/back.png', function (req, res, next) {
    res.sendFile(path.resolve('images/back.png'));
});
router.get('/designer/images/throbber.gif', function (req, res, next) {
    res.sendFile(path.resolve('images/throbber.gif'));
});
router.get('/images/up.gif', function (req, res, next) {
    res.sendFile(path.resolve('images/up.gif'));
});
router.get('/images/down.gif', function (req, res, next) {
    res.sendFile(path.resolve('images/down.gif'));
});


router.get('/designer/locale/en.xml', function (req, res, next) {
    res.sendFile(path.resolve('locale/en.xml'));
});

router.get('/designer/locale/es.xml', function (req, res, next) {
    res.sendFile(path.resolve('locale/es.xml'));
});


router.get('/designer/db/mysql/datatypes.xml', function (req, res, next) {
    res.sendFile(path.resolve('db/mysql/datatypes.xml'));
});
router.get('/designer/db/postgresql/datatypes.xml', function (req, res, next) {
    res.sendFile(path.resolve('db/postgresql/datatypes.xml'));
});
router.get('/designer/db/oracle/datatypes.xml', function (req, res, next) {
    res.sendFile(path.resolve('db/oracle/datatypes.xml'));
});

router.get('/designer/db/mssql/datatypes.xml', function (req, res, next) {
    res.sendFile(path.resolve('db/mssql/datatypes.xml'));
});


router.get('/designer/db/mysql/output.xsl', function (req, res, next) {
    res.sendFile(path.resolve('db/mysql/output.xsl'));
});
router.get('/designer/db/mssql/output.xsl', function (req, res, next) {
    res.sendFile(path.resolve('db/mssql/output.xsl'));
});
router.get('/designer/db/postgresql/output.xsl', function (req, res, next) {
    res.sendFile(path.resolve('db/postgresql/output.xsl'));
});
router.get('/designer/db/oracle/output.xsl', function (req, res, next) {
    res.sendFile(path.resolve('db/oracle/output.xsl'));
});


module.exports = router;
