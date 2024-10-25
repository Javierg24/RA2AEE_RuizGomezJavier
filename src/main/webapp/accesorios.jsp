<%-- 
    Document   : Accesorios
    Created on : 25 oct 2024, 12:07:37
    Author     : DAW2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="include/header.jsp" %>
<body>
    <div class="container">
        <h1>Accesorios</h1>
        <p>Explora nuestra colección de accesorios, diseñada para la comodidad y el estilo.</p>

        <div class="product-grid">
            <!-- Producto 1 -->
            <div class="product-item">
                <img src="imagenes/accesorios.png" alt="Camisa de hombre clásica" class="product-img">
                <h3>Camisa Clásica</h3>
                <p>Camisa de algodón 100% en colores neutros. Perfecta para cualquier ocasión.</p>
                <p><strong>Precio:</strong> €39.99</p>
            </div>

            <!-- Producto 2 -->
            <div class="product-item">
                <img src="imagenes/accesorios.png" alt="Pantalón de hombre casual" class="product-img">
                <h3>Pantalón Casual</h3>
                <p>Pantalones cómodos de corte moderno. Disponibles en varios colores.</p>
                <p><strong>Precio:</strong> €49.99</p>
            </div>

            <!-- Producto 3 -->
            <div class="product-item">
                <img src="imagenes/accesorios.png" alt="Chaqueta de hombre" class="product-img">
                <h3>Chaqueta de Invierno</h3>
                <p>Chaqueta de alta calidad con forro térmico. Ideal para el clima frío.</p>
                <p><strong>Precio:</strong> €79.99</p>
            </div>

            <!-- Producto 4 -->
            <div class="product-item">
                <img src="imagenes/accesorios.png" alt="Zapatos de hombre" class="product-img">
                <h3>Zapatos Elegantes</h3>
                <p>Zapatos de piel para un look formal y sofisticado.</p>
                <p><strong>Precio:</strong> €59.99</p>
            </div>
        </div>
    </div>
</body>
<%@ include file="include/footer.jsp" %>
