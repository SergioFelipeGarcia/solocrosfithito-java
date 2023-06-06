<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Start Page</title>
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
        <div class="container">
            <h2><u>Nuestras Tarifas</u></h2>
    
        <table>
            <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Training plan</th>
                <th scope="col">Precios</th>
              </tr>
              <tbody>
                <tr>
                  <td>PLAN BEGINNER (2 sesiones a la semana) tarifa semanal</td>
                  <td>25 Libras</td>
                </tr>  
              
                <tr>
                  <td>PLAN INTERMEDIATE (3 sesiones a la semana) - tarifa semanal</td>
                  <td>30 Libras</td>
                </tr>
                <tr>
                  <td>PLAN ELITE (3 sesiones a la semana) - tarifa semanal</td>
                  <td>35 Libras</td>
                </tr>
                <tr>
                  <td>CLASES PARTICULARES - Precio hora (Máx 5 horas semanales)</td>
                  <td>9,50 Libras</td>
                </tr>
                <tr>
                  <td>TARIFA ASISTENCIA A COMPETICIÓN - Precio por competición (solo para INTERMEDIATE y ELITE</td>
                  <td>22 Libras</td>
                </tr>
            </tbody>
        </table>

        
        </body>
</html>