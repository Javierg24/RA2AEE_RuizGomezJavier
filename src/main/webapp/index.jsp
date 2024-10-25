<%-- 
    Document   : index
    Created on : 24 oct 2024, 9:37:51
    Author     : DAW2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.daw.longway.SingletonCache"%>
<%@page import="com.daw.longway.DatosSecciones"%>
<%@ include file="include/header.jsp" %>
<body>

    <div class="container text-center mt-5">           
        <h1><%= datos.getInicio() %></h1> 
        <p class="lead">Moda para todos los estilos</p>
        <br>
        
        <%= datos.getGaleria() %>

        <!-- Sección de productos destacados -->
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="imagenes/1.png" class="card-img-top" alt="Producto 1">
                    <div class="card-body">
                        <h5 class="card-title">Producto 1</h5>
                        <p class="card-text">Descripción breve del producto 1.</p>
                        <a href="#" class="btn btn-primary">Ver más</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="imagenes/2.png" class="card-img-top" alt="Producto 2">
                    <div class="card-body">
                        <h5 class="card-title">Producto 2</h5>
                        <p class="card-text">Descripción breve del producto 2.</p>
                        <a href="#" class="btn btn-primary">Ver más</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="imagenes/3.png" class="card-img-top" alt="Producto 3">
                    <div class="card-body">
                        <h5 class="card-title">Producto 3</h5>
                        <p class="card-text">Descripción breve del producto 3.</p>
                        <a href="#" class="btn btn-primary">Ver más</a>
                    </div>
                </div>
            </div>
        </div>
        
        <br>

        <!-- Sección de categorías -->
        <h2 class="mt-5">Explora nuestras categorías</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card bg-light">
                    <img src="imagenes/catHombre.png" class="card-img-top" alt="Categoría 1">
                    <div class="card-body">
                        <h5 class="card-title">Hombres</h5>
                        <a href="#" class="btn btn-secondary">Explorar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-light">
                    <img src="imagenes/catMujer.png" class="card-img-top" alt="Categoría 2">
                    <div class="card-body">
                        <h5 class="card-title">Mujeres</h5>
                        <a href="#" class="btn btn-secondary">Explorar</a>                        
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-light">
                    <img src="imagenes/accesorios.png" class="card-img-top" alt="Categoría 3">
                    <div class="card-body">
                        <h5 class="card-title">Accesorios</h5>
                        <a href="#" class="btn btn-secondary">Explorar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br>
</body>    
<%@ include file="include/footer.jsp" %>

