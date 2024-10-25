<%-- 
    Document   : header
    Created on : 24 oct 2024, 9:38:21
    Author     : DAW2
--%>

<%@page import="com.daw.longway.DatosSecciones"%>
<%@page import="com.daw.longway.SingletonCache"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // Obtener la instancia de SingletonCache
    SingletonCache cache = SingletonCache.getInstance();
    DatosSecciones datos = cache.getDatosSecciones();
%>

<html lang="es">        
    <head>
        <meta charset="UTF-8">
        <title> <%= datos.getTituloInicio()%></title>
        <link href="css/styles.css" rel="stylesheet">
        <link rel="icon" href="imagenes/logo.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>            
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp"> <img src="imagenes/logo.png" alt="Logo de LongWay" class="img-fluid" style="max-width: 50px; "></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="sobre.jsp">Acerca de</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="localizacion.jsp"><%= datos.getSobreNosotros()%></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="contacto.jsp"><%= datos.getTituloContacto()%></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Categorias
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="hombre.jsp">Hombre</a></li>                                    
                                    <li><a class="dropdown-item" href="mujer.jsp">Mujer</a></li>                                    
                                    <li><a class="dropdown-item" href="accesorios.jsp">Accesorios</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="login.jsp">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

