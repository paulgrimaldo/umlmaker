module.exports = {
    index: function (req, response, next) {
        response.render('home', {
            isAuthenticated: req.isAuthenticated(),
            user: req.user
        });
    }
};