<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programming Language Search</title>
    <!-- Bootstrap CSS (Optional for styling) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Búsqueda de Lenguaje de Programación</h1>

    <form action="find-programming-languages" method="post" class="mt-4">
        <div class="mb-3">
            <label for="plCode" class="form-label">Ingrese el código del lenguaje de programación:</label>
            <input type="text" class="form-control" id="plCode" name="plCode" required>
        </div>
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>

    <br/>
    <a href="find-programming-languages" class="btn btn-secondary">Listado de lenguajes de programación</a>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
