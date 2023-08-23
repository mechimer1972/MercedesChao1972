var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();
var session = require('express-session');
var fileUpload = require('express-fileupload');


var IndexRouter = require('./routes/Index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/admin/login');
var cabaRouter = require('./routes/caba');
var cardalesRouter = require('./routes/cardales');
var contactoRouter = require('./routes/contacto');
var descuentosRouter = require('./routes/descuentos');
var lomitasRouter = require('./routes/lomitas');
var nosotrosRouter = require('./routes/nosotros');
var novedadesRouter = require('./routes/novedades');
var nuevas_clasesRouter = require('./routes/nuevas_clases');
var productosRouter = require('./routes/productos');
var sedesRouter = require('./routes/sedes');
var serviciosRouter = require('./routes/servicios');
var adminRouter = require('./routes/admin/noticiasfitness');
var noticiasfitnessRouter = require('./routes/noticiasfitness');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret: '12w45qe1qe4q1eq54eq5',
  resave: false,
  saveUninitialized: true
}));


app.get('/', function (req, res) {
var conocido = Boolean(req.session.nombre);

res.render('index', {
  title:'Bienvenido a BAFitness',
  conocido: conocido,
  nombre: req.session.nombre
});

});

app.post('/ingresar', function (req, res) {

  console.log(req.body.nombre)
  if (req.body.nombre) {
    req.session.nombre = req.body.nombre
  }
  res.redirect('/');
});

app.get('/salir', function (req, res) {
  req.session.destroy();
  res.redirect('/');
});

secured = async (req, res, next) => {
  try {
    console.log(req.session.id_usuario);
    if (req.session.id_usuario) {
      next();
    } else {
      res.redirect('/admin/login')
    }
  } catch (error) {
    console.log(error);
  }
}

app.use(fileUpload({
  useTempFiles: true,
  tempFileDir: '/tmp/'
}));

app.use('/index', IndexRouter);
app.use('/users', usersRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/noticiasfitness', secured, adminRouter);
app.use('/caba', cabaRouter);
app.use('/cardales', cardalesRouter);
app.use('/contacto', contactoRouter);
app.use('/descuentos', descuentosRouter);
app.use('/lomitas', lomitasRouter);
app.use('/nosotros', nosotrosRouter);
app.use('/novedades', novedadesRouter);
app.use('/nuevas_clases', nuevas_clasesRouter);
app.use('/productos', productosRouter);
app.use('/sedes', sedesRouter);
app.use('/servicios', serviciosRouter);
app.use('/noticiasfitness', noticiasfitnessRouter);



app.get('/Index', function (req, res) {
  res.send('Bienvenidos a BAFitness')
});

app.get('/caba', function (req, res) {
  res.render('caba')
});

app.get('/cardales', function (req, res) {
  res.render('cardales')
});

app.post('/contacto', function (req, res) {
  res.send('contacto')
});

app.get('/descuentos', function (req, res) {
  res.render('descuentos')
});

app.get('/lomitas', function (req, res) {
  res.render('lomitas')
});

app.get('/nosotros', function (req, res) {
  res.render('nosotros')
});

app.get('/novedades', function (req, res) {
  res.render('novedades')
});

app.get('/nuevas_clases', function (req, res) {
  res.render('nuevas_clases')
});

app.get('/productos', function (req, res) {
  res.render('productos')
});

app.get('/sedes', function (req, res) {
  res.render('sedes')
});

app.get('/servicios', function (req, res) {
  res.render('servicios')
});

app.get('/noticiasfitness', function (req, res) {
  res.render('noticiasfitness')
})

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
