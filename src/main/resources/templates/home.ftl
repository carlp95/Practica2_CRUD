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
                        <th style="text-align: center">Matrícula</th>
                        <th style="text-align: center">Nombre</th>
                        <th style="text-align: center">Apellido</th>
                        <th style="text-align: center">Teléfono</th>
                        <th style="text-align: center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <#list estudiantes as estu>
                        <tr>
                            <td style="text-align: center"><a href="/verEstudiante/${estu.matricula?string["0"]}" title="Ver Información de Estudiante">${estu.matricula?string["0"]}</a></td>
                            <td style="text-align: center">${estu.nombre}</td>
                            <td style="text-align: center">${estu.apellido}</td>
                            <td style="text-align: center">${estu.telefono}</td>
                            <td style="text-align: center">
                                <div class="col-sm-3">
                                    <a href="/editarEstudiante/${estu.matricula?string["0"]}"><button type="button" class="btn btn-primary" title="Actualizar Estudiante"><i class="fa fa-refresh"></i></button></a>
                                </div>
                                <div class="col-sm-2">
                                    <a href="/borrarEstudiante/${estu.matricula?string["0"]}"><button type="button" class="btn btn-primary" title="Eliminar Estudiante"><i class="fa fa-trash"></i></button></a>
                                </div>
                            </td>
                        </tr>
                    </#list>
                </tbody>
            </table>

        </div>
        <div class="row" >
            <div class="col-md-3">
                <a href="/agregarEstudiante"><button type="button" class="btn btn-primary" ><i class="fa fa-plus"> <strong>Crear Estudiante</strong></i></button></a>
            </div>
        </div>
    </#if>

    </div>
</body>
</html>