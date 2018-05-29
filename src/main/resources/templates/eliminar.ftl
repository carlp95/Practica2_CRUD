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
                <form action="/eliminarEstudiante/${estudiante.matricula?string["0"]}" method="post">
                    <p class="card-text">Está seguro de querer eliminar al estudiante: <strong>${estudiante.nombre} ${estudiante.apellido}</strong> de matricula: <strong>${estudiante.matricula?string["0"]}</strong>?</p>
                    <button type="submit" class="btn btn-secondary"><i class="fa fa-trash"> <strong>Eliminar</strong></i></button>
                </form>
        </div>
</div>


</body>
</html>