</<!doctype html>
<html lang="en">
<head>
    <!--<link  href="https://bootswatch.com/4/darkly/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <!--<title>Información General</title>-->
    <#include "/general.html">
</head>
<body>
    <#if estudiantes?size == 0>
        <div class="alert alert-dismissible alert-danger">
            <button type="button" class="close" data-dismiss="alert" onclick="this.parentElement.style.display='none';">&times;</button>
            <strong>Lo Siento!</strong> No hay estudiantes Registrados.
            <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-plus"> <strong>Crear Estudiante</strong></i></button></a>
        </div>
    </#if>
    <div class="container">
    <#if (estudiantes?size > 0)>
        <div class="row">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Matrícula</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Teléfono</th>
                    </tr>
                </thead>
                <tbody>
                    <#list estudiantes as estu>
                        <tr>
                            <td>${estu.matricula?string["0"]}</td>
                            <td>${estu.nombre}</td>
                            <td>${estu.apellido}</td>
                            <td>${estu.telefono}</td>
                        </tr>
                    </#list>
                </tbody>
            </table>
            <div class="row" >
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-plus"> <strong>Crear Estudiante</strong></i></button></a>
            </div>
        </div>

    </#if>

    </div>
</body>
</html>