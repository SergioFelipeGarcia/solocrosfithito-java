package com.empresa.dao;
//capa de gestion de datos:CRUD

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.empresa.model.Cliente;

public class ClienteDAO {

	private String endpoint="jdbc:mysql://localhost:3306/test?useSSL=false";//cambie el puerto de localhost por el que usted tenga  
	private String user="root";
	private String pass="";
	
	 // Paradigma orientado a objetos: se define la clase ClienteDAO y la clase Cliente para modelar la información y operaciones de los clientes
   
	public Connection conectar() {
		
		Connection connection =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 connection = DriverManager.getConnection(endpoint, user, pass);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}//cierra metodo conectar
	
	
	// Paradigma procedimental: se implementan los métodos CRUD de la clase ClienteDAO definiendo una serie de pasos secuenciales para crear,
	//leer, actualizar y eliminar clientes en la base de datos
	public void insertCliente(Cliente c)  {
  
        // try-with-resource statement will auto close the connection.
		 Connection connection = conectar();
		 PreparedStatement ps;
        try {
        	
        	
        	ps = connection.prepareStatement("INSERT INTO abonados VALUES (?,?,?,?,?);");
           ps.setString(1,c.getNombre());
           ps.setString(2,c.getPlan());
           ps.setInt(3,c.getHoras());
           ps.setString(4,c.getPeso());
           ps.setInt(5,c.getEventos());
           ps.executeUpdate();
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	// Paradigma basado en eventos: se utilizan objetos como Connection, PreparedStatement y ResultSet para realizar operaciones con la base de datos 
	//y recibir eventos que indican si la operación se realizó con éxito o no. Además, se emplea el try-with-resources statement 
	//para cerrar automáticamente las conexiones y liberar los recursos utilizados.
	public Cliente publicarCliente(String usuario) {

	    Connection connection = conectar();

	    PreparedStatement ps;

	    ResultSet rs;

	    Cliente cliente = null;



	    try {

	        ps = connection.prepareStatement("SELECT * FROM abonados WHERE nombre = ?;");

	        ps.setString(1, usuario);

	        rs = ps.executeQuery();



	        if (rs.next()) {
	        	
	        	   String nombre = rs.getString("nombre");
	        	   String plan = rs.getString("plan");


	            int horas = rs.getInt("horas");
	            
	            String peso = rs.getString("peso");

	            int eventos = rs.getInt("eventos");

	         
	        

	     



	            // Crear el objeto Cliente con los datos obtenidos

	            cliente = new Cliente(nombre, plan, horas, peso, eventos);

	        }



	        rs.close();

	        ps.close();

	        connection.close(); // Cerrar la conexión



	    } catch (SQLException e) {

	        e.printStackTrace();

	    }



	    return cliente;

	}
    	
    }//cierrra insertar
	
	
	//resto de metodos crud
//cierra dao
