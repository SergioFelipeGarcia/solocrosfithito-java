<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>

<head>

    <title>Calculo de Costes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</head>

<body>
 
        
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
             
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                       <li class="nav-item">
                        <a class="nav-link" href="add-evento-cliente.jsp">Registrar eventos</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="select-cliente.jsp">Calcular precio</a>
                      </li>
                     <li class="nav-item">
                        <a class="nav-link" href="tarifas.jsp">Conoce nuestras tarifas</a>
                      </li>
                    </ul> 
                </div>
            </div>
        </nav>

    <h1>Calculo de costes</h1>
	<div class="container">

    <%

    // Obtén los datos del request
    String nombre = (String) request.getAttribute("nombre");
    String plan = (String) request.getAttribute("plan");

    int horas = (int) request.getAttribute("horas");
    
    String peso = (String) request.getAttribute("peso");

    int eventos = (int) request.getAttribute("eventos");

    // Calcula el precio de las competiciones

    double precioEventos =eventos * 22.00;

    String precioEventosConSimbolo = String.format("%.2f£", precioEventos);

    double precioHoras = horas * 9.50;

    String precioHorasConSimbolo = String.format("%.2f£", precioHoras);



    // Calcula el precio dependiendo del plan

    double precioPlan = 0.0;

    if (plan.equals("beginner")) {

        precioPlan = 5.0;

    } else if (plan.equals("intermediate")) {

        precioPlan = 10.0;

    } else if (plan.equals("elite")) {

        precioPlan = 15.0;

    }



    // Calcula el precio total

    double precioTotal = precioEventos +  precioPlan + precioHoras;

    String precioTotalConSimbolo = String.format("%.2f£", precioTotal);

    %>

	<table>
            <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">CONCEPTO</th>
                <th scope="col">CANTIDAD</th>
              </tr>
              <tbody>
                <tr>
                  <td>NOMBRE </td>
                  <td><%= nombre %></td>
                </tr>  
              
                <tr>
                  <td>EVENTOS REALIZADOS</td>
                  <td><%= eventos %></td>
                </tr>
                <tr>
                  <td>COMPETICIONES</td>
                  <td><%= precioEventosConSimbolo %></td>
                </tr>
                <tr>
                  <td>CLASES PARTICULARES</td>
                  <td><%= precioHorasConSimbolo %></td>
                </tr>
                <tr>
                  <td>PLAN</td>
                  <td><%= plan %></td>
                </tr>
                <tr>
                  <td>CATEGORIA PESO</td>
                  <td><%= peso %></td>
                </tr>
                  <td><b>TOTAL</b></td>
                  <td><%= precioTotalConSimbolo %></td>
                </tr>
            </tbody>
        </table>



    </div>

</body>

</html>