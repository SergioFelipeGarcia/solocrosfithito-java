# solocrosfithito-java


El proyecto sigue una arquitectura MVC (Modelo-Vista-Controlador) para mantener una separación clara entre la lógica de negocio, la presentación y el control de la aplicación. A continuación, se detallan las características clave:

Arquitectura:

Modelo: La clase Cliente representa a un cliente, almacenando su nombre, plan de entrenamiento, horas de entrenamiento, peso y cantidad de eventos. La clase ClienteDAO se encarga de la gestión de los datos de los clientes, incluyendo la conexión a la base de datos y la ejecución de consultas SQL.

Vista: Se utilizan archivos JSP (JavaServer Pages) para las vistas, que contienen la estructura HTML y la presentación visual de los datos. Los archivos JSP incluidos en el proyecto son add-evento-cliente.jsp, select-cliente.jsp, tarifas.jsp y list-clientes.jsp. Estos archivos proporcionan una interfaz para registrar eventos de clientes, calcular precios, mostrar las tarifas de los planes de entrenamiento y mostrar la información de los clientes.

Controlador: La clase ClienteControler es el controlador principal del proyecto. Se encarga de recibir las solicitudes HTTP, determinar la acción requerida y dirigir el flujo de control hacia los métodos correspondientes en el modelo (ClienteDAO) y hacia las vistas adecuadas.

Funcionalidades:

Registro de clientes: La función addCliente en ClienteControler recibe los datos de un nuevo cliente (nombre, plan, horas, peso y eventos), crea un objeto Cliente y lo inserta en la base de datos utilizando ClienteDAO.

Cálculo de precio: La función selectCliente en ClienteControler recibe el nombre de un cliente, utiliza ClienteDAO para buscar el cliente en la base de datos y muestra la información del cliente en la vista list-clientes.jsp. Esto incluye el nombre del cliente, el plan de entrenamiento, las horas de entrenamiento, el peso y la cantidad de eventos.

Visualización de tarifas: La vista tarifas.jsp muestra las tarifas de los diferentes planes de entrenamiento, incluyendo el plan Beginner, Intermediate y Elite, así como las tarifas para clases particulares y la asistencia a competiciones.

Tecnologías utilizadas:

Java Servlets: Se utilizan Servlets para gestionar las solicitudes y respuestas HTTP, y para coordinar la comunicación entre las vistas y los modelos.

JSP (JavaServer Pages): Los archivos JSP se utilizan para generar las vistas dinámicas, combinando código Java con HTML para mostrar los datos y estructurar la presentación.

JDBC (Java Database Connectivity): Se utiliza JDBC para establecer la conexión con la base de datos MySQL y ejecutar consultas SQL para el acceso y manipulación de datos de clientes.

Bootstrap: La librería Bootstrap se emplea para mejorar la apariencia visual y el diseño de las páginas HTML, proporcionando estilos predefinidos y componentes reutilizables.
