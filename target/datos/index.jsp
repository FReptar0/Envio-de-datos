<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <script src="js/main.js"></script>

        <div class="container">
            <form action="second.jsp" method="post">
                <h1>Ingrese sus datos:</h1>


                <div class="inputs">
                    <div class="form-group">
                        <label>
                            Nombre completo:
                        </label>
                        <input type="text" name="nombre" class="form-control bg-secondary">
                    </div>
                    <div class="form-group">
                        <label>
                            Edad:
                        </label>
                        <input type="text" name="edad" class="form-control bg-secondary"
                            onkeypress="return numValidation(event);">
                    </div>
                    <div class="form-group">
                        <label>
                            Sexo:
                        </label>
                        <select name="genero" id="" class="form-select bg-secondary" placeholder="Seleccione">
                            <option selected disabled>Seleccione</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>
                            Correo:
                        </label>
                        <input type="email" name="correo" class="form-control bg-secondary">
                    </div>
                    <div class="form-group">
                        <label>
                            Direcci&oacute;n:
                        </label>
                        <input type="text" name="direccion" class="form-control bg-secondary">
                    </div>
                    <div class="form-group">
                        <label>
                            Tel&eacute;fono:
                        </label>
                        <input type="text" name="tel" class="form-control bg-secondary"
                            onkeypress="return numValidation(event);">
                    </div>
                    <div class="form-group">
                        <label>
                            Nombre de la persona a la cual acudir en caso de emergencia:
                        </label>
                        <input type="text" name="nombreEmergencia" class="form-control bg-secondary">
                    </div>
                    <div class="form-group">
                        <label>
                            Parentezco:
                        </label>
                        <input type="text" name="parentezco" class="form-control bg-secondary">
                    </div>
                    <div class="boton">
                        <button type="submit"
                            class="btn btn-primary position-absolute start-50 translate-middle">Enviar</button>
                    </div>
                </div>

            </form>
        </div>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    </body>

    </html>