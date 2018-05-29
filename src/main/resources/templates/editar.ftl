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
        <div class="card border-primary">
            <div class="card-header"><h2>Formulario para Actualizar un Estudiante</h2></div>
            <div class="card-body">
                <form action="actualizar" method="post">
                    <div class="form-group">
                        <label for="matricula">Matrícula</label>
                        <input class="form-control" name="matricula" type="text" maxlength="8" value="${estudiante.matricula?string["0"]}">
                    </div>
                    <div class="form-group row">
                        <div class="col-md-6">
                            <label for="nombre">Nombre</label>
                            <input class="form-control"  name="nombre" type="text" value="${estudiante.nombre}">
                        </div>
                        <div class="col-md-6">
                            <label for="apellido">Apellido</label>
                            <input class="form-control" name="apellido" type="text" value="${estudiante.apellido}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="telefono">Teléfono</label>
                        <input class="form-control" name="telefono" type="tel" maxlength="10" value="${estudiante.telefono}">
                    </div>
                    <button type="submit" class="btn btn-success"><i class="fa fa-refresh"> <strong>Actualizar</strong></i></button>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>