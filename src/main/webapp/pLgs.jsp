<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programming Language Information</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <c:choose>
        <c:when test="${not empty pLg}">
            <h2 class="text-center">Información del Lenguage de Programación: <c:out value="${pLg.code}"/></h2>
            <div class='mb-2'><strong>Código:</strong> <c:out value="${pLg.code}"/></div>
            <div class='mb-2'><strong>Nombre:</strong> <c:out value="${pLg.name}"/></div>
            <div class='mb-2'><strong>Descripción:</strong> <c:out value="${pLg.description}"/></div>
        </c:when>

        <c:otherwise>
            <h2 class="text-center">Información del Lenguaje de Programación: No disponible</h2>
            <div class='alert alert-warning'>Lenguaje de Programación no encontrado</div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
