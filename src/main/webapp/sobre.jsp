<%-- 
    Document   : sobre
    Created on : 24 oct 2024, 9:37:58
    Author     : DAW2
--%>

<%@page import="com.daw.longway.DatosSecciones"%>
<%@page import="com.daw.longway.SingletonCache"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="include/header.jsp" %>
<body>
    <div class="container mt-5 text-center">
        <h1><%= datos.getSobreNosotros()%></h1>

        <img src="imagenes/logo.png" alt="Logo de Vibely" class="img-fluid" style="max-width: 200px; margin-top: 20px;">

        <div class="mt-4">
            <p class="lead">
                En <strong>Longway</strong>, nos dedicamos a ofrecer la mejor moda para hombres, mujeres y niños. 
                Desde nuestra apertura en Sevilla, hemos trabajado arduamente para convertirnos en una referencia de estilo y calidad en la región.
            </p>
            <p>
                Nuestro compromiso es ofrecer prendas únicas, sostenibles y accesibles para todos. Nos enorgullece 
                colaborar con diseñadores locales y marcas reconocidas para brindarte lo último en tendencias, con un enfoque en la moda ética y responsable.
            </p>
            <p>
                Visítanos en nuestra tienda física en <strong>Calle Ejemplo 123, Sevilla</strong>, o explora nuestra tienda en línea para disfrutar de una experiencia de compra cómoda y segura.
                Gracias por confiar en Longway, donde la moda se vive con pasión.
            </p>

            <%= datos.getPreguntasFrecuentes()%>

            <%= datos.getPoliticaPrivacidad()%>
            
            <%= datos.getTestimonios()%>

            <%= datos.getTerminosCondiciones()%>
        </div>
    </div>
</body>    
<%@ include file="include/footer.jsp" %>
