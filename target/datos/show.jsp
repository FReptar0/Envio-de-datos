<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>

    <body>
        <style>
            .container {
                margin: 0 auto;
                width: 50vw;
            }

            input,
            select {
                border: 1px solid #000 !important;
            }

            .inputs {
                margin: 2%;
                margin-bottom: 50px;
            }

            form {
                padding: 10px;
            }

            h1 {
                text-align: center;
            }

            .btn {
                text-align: center;
                width: 30%;
            }

            .boton {
                padding-top: 25px;
            }

            .bg-secondary {
                --bs-bg-opacity: .2;
                background-color: rgba(var(--bs-secondary-rgb), var(--bs-bg-opacity)) !important;
            }
        </style>

        <script src="js/main.js"></script>


        <%! String nombre, edad, genero, correo, tel, nombreEmergencia, parentezco; %>

            <% nombre=request.getParameter("nombre"); edad=request.getParameter("edad");
                genero=request.getParameter("genero"); correo=request.getParameter("correo");
                tel=request.getParameter("tel"); nombreEmergencia=request.getParameter("nombreEmergencia");
                parentezco=request.getParameter("parentezco"); %>

                <h1> Datos de la persona: <%= nombre %>
                </h1>

                <div class="container">
                    <form action="" method="post">
                        <div class="inputs">

                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= nombre %>"
                                    readonly>
                            </div>

                            <div class="form-group">
                                <label for="edad">Edad</label>
                                <input type="text" class="form-control" id="edad" name="edad" value="<%= edad %>"
                                    readonly>
                            </div>

                            <div class="form-group">
                                <label for="genero">Genero</label>
                                <input type="text" class="form-control" id="genero" name="genero" value="<%= genero %>"
                                    readonly>
                            </div>

                            <div class="form-group">
                                <label for="correo">Correo</label>
                                <input type="text" class="form-control" id="correo" name="correo" value="<%= correo %>"
                                    readonly>
                            </div>

                            <div class="form-group">
                                <label for="tel">Teléfono</label>
                                <input type="text" class="form-control" id="tel" name="tel" value="<%= tel %>" readonly>
                            </div>

                            <div class="form-group">
                                <label for="nombreEmergencia">Nombre de la persona de emergencia</label>
                                <input type="text" class="form-control" id="nombreEmergencia" name="nombreEmergencia"
                                    value="<%= nombreEmergencia %>" readonly>
                            </div>

                            <div class="form-group">
                                <label for="parentezco">Parentezco
                                </label>
                                <input type="text" class="form-control" id="parentezco" name="parentezco"
                                    value="<%= parentezco %>" readonly>
                            </div>
                        </div>


                        <div class="inputs">
                            <h2>Datos del contacto de emergencia: <%= nombreEmergencia %>
                            </h2>
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


                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                    crossorigin="anonymous"></script>
    </body>

    </html>