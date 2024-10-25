<%-- 
    Document   : login
    Created on : 18 oct 2024, 11:17:36
    Author     : DAW2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="include/header.jsp" %>
<body>
    <div class="container mt-4">
        <h2>Login</h2>        
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Nombre de usuario:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Iniciar sesión</button>
        </form>
        <br>
    </div>    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<%@ include file="include/footer.jsp" %>