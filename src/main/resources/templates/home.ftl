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
    <div class="container" align="center">
    <#if (estudiantes?size > 0)>
        <div class="row">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th colspan="4" style="text-align: center"><h2>Listado de Estudiantes</h2></th>
                    </tr>
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

        </div>
        <div class="row" >
            <div class="col-md-3">
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-plus"> <strong>Crear Estudiante</strong></i></button></a>
            </div>
            <div class="col-md-3">
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-edit"> <strong>Editar Estudiante</strong></i></button></a>
            </div>
            <div class="col-md-3">
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-undo"> <strong>Actualizar Estudiante</strong></i></button></a>
            </div>
            <div class="col-md-3">
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-trash"> <strong>Eliminar Estudiante</strong></i></button></a>
            </div>
        </div>
    </#if>

    </div>
</body>
</html>