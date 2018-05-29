</<!doctype html>
<html lang="en">
<head>
    <#include "/general.html">
</head>
<body>
<div class="container" align="center">
    <div class="card text-white bg-danger mb-3" style="max-width: 20rem;">
        <div class="card-header">Confirmación de eliminación</div>
        <div class="card-body">
            <h4 class="card-title">¡Cuidado!</h4>
                <form action="/remover" method="post">
                    <p class="card-text">Está seguro de querer eliminar al estudiante: <strong>${estudiante.nombre} ${estudiante.apellido}</strong> de matricula: <strong>${estudiante.matricula?string["0"]}</strong>?</p>
                    <div class="form-group">
                        <input class="form-control" name="matricula" type="hidden" maxlength="8" value="${estudiante.matricula?string["0"]}">
                    </div>
                    <div class="form-group row">
                        <div class="col-md-6">
                            <input class="form-control"  name="nombre" type="hidden" value="${estudiante.nombre}">
                        </div>
                        <div class="col-md-6">
                            <input class="form-control" name="apellido" type="hidden" value="${estudiante.apellido}">
                        </div>
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="telefono" type="hidden" maxlength="10" value="${estudiante.telefono}">
                    </div>
                    <button type="submit" class="btn btn-secondary"><i class="fa fa-trash"> <strong>Eliminar</strong></i></button>
                </form>
        </div>
</div>


</body>
</html>