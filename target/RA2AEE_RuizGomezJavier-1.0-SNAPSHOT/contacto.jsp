<%-- 
    Document   : contacto
    Created on : 24 oct 2024, 9:38:09
    Author     : DAW2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<%@ include file="include/header.jsp" %>
<body>
    <div class="container mt-5">
        <h1>Contacto</h1>

        <!-- Información de contacto -->
        <div class="mt-3">
            
            <%= datos.getContacto() %>

        </div>

        <!-- Formulario de contacto -->
        <h3 class="mt-4">Envíanos un mensaje</h3>
        <form method="post" action="contacto.jsp" class="mt-3">
            <div class="mb-3">
                <label for="name" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Correo electrónico</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="subject" class="form-label">Asunto</label>
                <input type="text" class="form-control" id="subject" name="subject" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Mensaje</label>
                <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>

        <%-- Guardar el mensaje en un archivo si se ha enviado el formulario --%>
        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String subject = request.getParameter("subject");
                String message = request.getParameter("message");

                // Ruta donde se guardará el archivo de mensajes
                String filePath = application.getRealPath("/") + "mensajes_contacto.txt";

                try (FileWriter fileWriter = new FileWriter(filePath, true);
                     PrintWriter writer = new PrintWriter(fileWriter)) {

                    writer.println("Nombre: " + name);
                    writer.println("Email: " + email);
                    writer.println("Asunto: " + subject);
                    writer.println("Mensaje: " + message);
                    writer.println("-------------------------------");

                    out.println("<div class='alert alert-success mt-3'>¡Gracias! Tu mensaje ha sido enviado correctamente.</div>");
                } catch (IOException e) {
                    out.println("<div class='alert alert-danger mt-3'>Hubo un error al enviar tu mensaje. Inténtalo de nuevo.</div>");
                }
            }
        %>
    </div>
</body>
<%@ include file="include/footer.jsp" %>
