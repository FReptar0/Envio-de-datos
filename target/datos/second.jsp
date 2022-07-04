<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>

    <body>
        <script src="js/main.js"></script>


        <%! String nombre, edad, genero, correo, tel, nombreEmergencia, parentezco; %>

            <% nombre=request.getParameter("nombre"); edad=request.getParameter("edad");
                genero=request.getParameter("genero"); correo=request.getParameter("correo");
                tel=request.getParameter("tel"); nombreEmergencia=request.getParameter("nombreEmergencia");
                parentezco=request.getParameter("parentezco"); %>


                <div class="container">
                    <form action="showData.jsp" method="post">
                        <div class="inputs" style="display: none!important;visibility:hidden !important;">
                            <h1> Datos de la persona: <%= nombre %>
                            </h1>
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


                        <div class="inputs" style="margin-top: 15vh ;">
                            <h2>Datos del contacto de emergencia: <%= nombreEmergencia %>
                            </h2>
                            <div class="form-group">
                                <label>
                                    Edad:
                                </label>
                                <input type="text" name="edadEmergencia" class="form-control bg-secondary"
                                    onkeypress="return numValidation(event);">
                            </div>
                            <div class="form-group">
                                <label>
                                    Sexo:
                                </label>
                                <select name="generoEmergencia" id="" class="form-select bg-secondary"
                                    placeholder="Seleccione">
                                    <option selected disabled>Seleccione</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>
                                    Correo:
                                </label>
                                <input type="email" name="correoEmergencia" class="form-control bg-secondary">
                            </div>
                            <div class="form-group">
                                <label>
                                    Direcci&oacute;n:
                                </label>
                                <input type="text" name="direccionEmergencia" class="form-control bg-secondary">
                            </div>
                            <div class="form-group">
                                <label>
                                    Tel&eacute;fono:
                                </label>
                                <input type="text" name="telEmergencia" class="form-control bg-secondary"
                                    onkeypress="return numValidation(event);">
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