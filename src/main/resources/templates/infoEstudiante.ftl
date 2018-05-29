</<!doctype html>
<html lang="en">
<head>
    <!--<link  href="https://bootswatch.com/4/darkly/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Agregar Estudiante</title>-->
    <#include "/general.html">
</head>
<body>
<div class="container" align="center">
    <div class="col-lg-8">
        <ul class="list-group">
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <strong>Matrícula</strong>
                <span class="badge badge-primary badge-pill">${estudiante.matricula?string["0"]}</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <strong>Nombre Completo</strong>
                <span class="badge badge-primary badge-pill">${estudiante.nombre} ${estudiante.apellido}</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <strong>Teléfono</strong>
                <span class="badge badge-primary badge-pill">${estudiante.telefono}</span>
            </li>
        </ul>
    </div>
</div>


</body>
</html>