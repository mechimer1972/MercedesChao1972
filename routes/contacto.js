var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto');
});
 
router.post('/', async(req, res, next) => {

  console.log(req.body)

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'email@email.com',
    subject: 'Contacto desde la web',
    html: nombre + " " + apellido + " se contactó a través de la web y quiere más info a este correo: " 
    + email + ". <br> Además, hizo este comentario: " + mensaje + " . <br> Su tel es: " + tel
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });
 
  var info = await transporter.sendMail(obj);

  res.render('contacto', {
    message: 'Mensaje enviado correctamente'
  });
  
});

module.exports = router;