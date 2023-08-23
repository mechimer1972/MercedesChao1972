var pool = require('./bd');

async function getNoticiasfitness() {
    var query = 'select * from noticiasfitness order by id desc';
    var rows = await pool.query(query);
    return rows;

}

async function deleteNoticiasfitnessById(id) {
    var query = 'delete from noticiasfitness where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;

}

async function insertNovedad(obj) {
    try {
        var query = "insert into noticiasfitness set ?";
        var rows = await pool.query(query, [obj]);
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

async function getNovedadById(id) {
    var query = "select * from noticiasfitness where id = ?";
    var rows = await pool.query(query, [id]);
    return rows[0];
}

async function modificarNovedadById(obj, id) {
    try{
        var query = "update noticiasfitness set ? where id = ?";
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}

async function buscarNovedad(busqueda) {
    var query = " select * from noticiasfitness where titulo like ? OR subtitulo like ? OR cuerpo like ? ";
                 
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda +
'%', '%' + busqueda + '%']);
return rows;
}


module.exports = { getNoticiasfitness, deleteNoticiasfitnessById, insertNovedad, getNovedadById, modificarNovedadById, buscarNovedad }
