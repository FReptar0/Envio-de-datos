<%@ page contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/tarjetas.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>

    <body>

        <%! String nombre, edad, genero, correo, tel, nombreEmergencia, parentezco, edadEmergencia, generoEmergencia,
            correoEmergencia, direccionEmergencia, telEmergencia; %>

            <% nombre=request.getParameter("nombre"); edad=request.getParameter("edad");
                genero=request.getParameter("genero"); correo=request.getParameter("correo");
                tel=request.getParameter("tel"); nombreEmergencia=request.getParameter("nombreEmergencia");
                parentezco=request.getParameter("parentezco"); edadEmergencia=request.getParameter("edadEmergencia");
                generoEmergencia=request.getParameter("generoEmergencia");
                correoEmergencia=request.getParameter("correoEmergencia");
                direccionEmergencia=request.getParameter("direccionEmergencia");
                telEmergencia=request.getParameter("telEmergencia"); %>

                <!-- Ingresa la forma que te salga de los huevos para mostrar los datos -->
                <!-- IDEAS -->
                <!-- 
                            * Dos alertas, una para los datos del paciente y  otra para los datos del contacto de emergencia
                            * Dos tarjetas que en cada una se muestre la info de cada uno (Como las del examen)
                            * Una o dos tablas que muestren los datos
                            * Listas
                            * Desplegarla en orden sin más
                         -->

                <div class="container">
                    <div class="fatherCards">
                        <div class="cards" id="izquierda">
                            <div class="text">
                                <h2>Datos del paciente: <%= nombre %>
                                </h2>
                                <br>
                                <ul>
                                    <li>
                                        <p>Edad: <%= edad %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Sexo: <%= genero %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Correo: <%= correo %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Tel&eacute;fono <%= tel %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Su contacto de emergencia es su: <%= parentezco %>
                                        </p>
                                    </li>
                                </ul>

                            </div>
                        </div>
                        <div class="cards">
                            <div class="text">
                                <h2>Nombres del contacto de emergencia: <%= nombreEmergencia %>
                                </h2>
                                <br>
                                <ul>
                                    <li>
                                        <p>Edad: <%= edadEmergencia %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Sexo: <%= generoEmergencia %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Correo: <%= correoEmergencia %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Tel&eacute;fono: <%= telEmergencia %>
                                        </p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <p>Direcci&oacute;n: <%= direccionEmergencia %>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


    </body>

    </html>