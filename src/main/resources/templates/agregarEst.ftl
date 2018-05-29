</<!doctype html>
<html lang="en">
<head>
    <link  href="https://bootswatch.com/4/darkly/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Agregar Estudiante</title>
</head>
<body>
    <div class="container" align="center">
        <div class="col-lg-8">
            <div class="card border-primary">
                <div class="card-header"><h2>Formulario para Agregar un Estudiante</h2></div>
                <div class="card-body">
                    <form action="guardar" method="post">
                        <div class="form-group">
                            <label for="matricula">Matrícula</label>
                            <input class="form-control" name="matricula" placeholder="20130000" type="text">
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="nombre">Nombre</label>
                                <input class="form-control"  name="nombre" placeholder="Fulano" type="text">
                            </div>
                            <div class="col-md-6">
                                <label for="apellido">Apellido</label>
                                <input class="form-control" name="apellido" placeholder="Pérez" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Teléfono</label>
                            <input class="form-control" name="telefono" placeholder="8090000000" type="tel" maxlength="10">
                        </div>
                        <button type="submit" class="btn btn-success"><i class="fa fa-save"> Guardar</i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</body>
</html>