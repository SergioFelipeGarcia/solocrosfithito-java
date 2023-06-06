<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Eventos de usuario</title>
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
            <h2><u>Introduzca sus datos para calcular las tarifas de este mes</u></h2>
             <br>
		<form action="add" method="POST">
                    <div class="form-group">
				<label for="nombre">Nombre y Apellidos:</label>
				<input type="text" class="form-control" id="nombre" placeholder="Nombre y Apellidos" name="nombre" required>
                    </div>
                    <br>
                     <div class="form-group">
			<select class="form-select" aria-label="Default select example"  id="plan" name="plan" required>
			  	<option selected>Plan de trabajo</option>
				  <option value="Beginner" >PLAN BEGINNER (2 sesiones a la semana) tarifa semanal 25 Libras</option>
				  <option value="Intermediate" >PLAN INTERMEDIATE (3 sesiones a la semana) - tarifa semanal 30 Libras</option>
				  <option value="Elite" >PLAN ELITE (3 sesiones a la semana) - tarifa semanal 35 Libras</option>

			</select>
		    </div>
                    
                    <br>
              <label for="horas-extra">Añada el número de Clases particulares - Precio hora (Máx 5 horas semanales) (sí / no):</label>
		<input type="number" id="horas" name="horas" value ="0"><br><br>
                    <br>
		    <div class="form-group">
				<label for="peso">Indica cuanto pesas:</label>
                             <select class="form-select" aria-label="Default select example" id="peso" name="peso" required>
							 
							  <option value="66" >peso  inferior a 66 Peso Mosca</option>
							  <option value="66-73" >66-73 Peso Ligero</option>
							  <option value="73-81">73-81 Ligero de peso medio</option>
							  <option value="81-90">81-90 Peso Medio</option>
							  <option value="90-100">superior  a 90  kg y menor o igual a 100 kg Peso Semi Pesado</option>
							  <option value="+100" >más de 100 Peso Pesado</option>
							</select>
		    </div>
                    <br>
                    <label for="eventos">Número de Eventos Presentados este Mes. Solo puedes participar si tu plan es intermedio o superior :</label>
		<input type="number" id="eventos" name="eventos" value="0"><br><br>
                  
                    <br>
			<div class="form-check">
				<label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="policy" required> Acepto la política de privacidad.
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
                <br>
                <br>
        </div> 
        
    </body>
</html>