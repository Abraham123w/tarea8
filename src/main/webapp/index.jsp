<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página de Acciones</title>
    <link rel="stylesheet" href="estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<div class="container">
    <div class="banner">
        <span class="banner-text">¡Noticias importantes!</span>
        <marquee behavior="scroll" direction="left">
            <span class="news">Caen los futuros de Wall Street; los miembros de la Fed determinarán la confianza</span>
            <span class="news">Wellington Management alerta: El BCE aún tiene camino por recorrer</span>
            <span class="news">Recortes en China, Alibaba, fabricantes de aviones: 5 claves en Wall Street</span>
        </marquee>
    </div>

    <h1>Publicidad</h1>
    <div class="publicidad">
        <img src="https://yt3.googleusercontent.com/ytc/AGIKgqN3gm_qZ7_Be1pcO0I9rn3STrnlrZU37os0mel81A=s900-c-k-c0x00ffffff-no-rj" alt="Publicidad 2" class="publicidad-imagen">

        <img src="https://i-invdn-com.investing.com/news/LYNXMPEA6J01O_L.jpg" alt="Publicidad 3" class="publicidad-imagen">
    </div>

    <h1>Lista de Acciones</h1>
    <table class="table">
        <thead>
        <tr>
            <th>Indice</th>
            <th>Precio</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>IBEX 35</td>
            <td class="precio">$9450.59</td>
        </tr>
        <tr>
            <td>US 500</td>
            <td class="precio">$4397.1</td>
        </tr>
        <tr>
            <td>Dow Jones</td>
            <td class="precio">$15052.2</td>
        </tr>
        </tbody>
    </table>

    <canvas id="graficoPrecios"></canvas>

    <script>
        // Obtén los precios de las acciones
        var precios = [
            9450.59,
            4397.1,
            15052.2
        ];

        // Obtén los nombres de las acciones
        var acciones = [
            "IBEX 35",
            "US 500",
            "Dow Jones"
        ];

        // Crea un nuevo gráfico de línea
        var ctx = document.getElementById('graficoPrecios').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: acciones,
                datasets: [{
                    label: 'Precio',
                    data: precios,
                    backgroundColor: 'rgba(0, 123, 255, 0.2)',
                    borderColor: 'rgba(0, 123, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</div>
</body>
</html>
