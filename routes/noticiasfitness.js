var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var noticiasfitnessModel = require('../models/noticiasfitnessModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {
  noticiasfitness = await noticiasfitnessModel.getNoticiasfitness();
  noticiasfitness = noticiasfitness.splice(0, 5);
  noticiasfitness = noticiasfitness.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/image/noimage.jpg'
      }
    }
  });
  res.render('noticiasfitness', {
    noticiasfitness
  });

});

module.exports = router, nodemailer, cloudinary;