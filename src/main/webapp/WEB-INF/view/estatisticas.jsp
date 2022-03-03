<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleEstatisticas.css">
    <title>Estaticas</title>
</head>
<body>
    
    <div class="tab">
        <div class="gen">
            <h3>Genero</h3>
            <p>Masculino: ${masculino }</p>
            <p>Feminino: ${feminino }</p>
            <p>Outro: ${outro }</p>
        </div>ll

        <div class="gen">
            <h3>Período:</h3>
            <p>Manhã: ${manha }</p>
            <p>Tarde: ${tarde }</p>
            <p>Noite: ${noite }</p>
        </div>

        <div class="gen">
            <h3>Dia da semana</h3>
            <p>Domingo: ${domingo }</p>
            <p>Segunda: ${segunda }</p>
            <p>Terça: ${terca }</p>
            <p>Quarta: ${quarta }</p>
            <p>Quinta: ${quinta }</p>
            <p>Sexta: ${sexta }</p>
            <p>Sábado: ${sabado }</p>
        </div>

    </div>

    <section class="images">
        <img src="Inicio/img/mobile4.svg.svg" alt="Mobile">
        <div class="circle"></div>
    </section>

</body>
</html>