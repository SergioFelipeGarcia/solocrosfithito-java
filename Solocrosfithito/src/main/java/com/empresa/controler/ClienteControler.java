package com.empresa.controler;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.empresa.dao.ClienteDAO;
import com.empresa.model.Cliente;

/**
 * Servlet implementation class ClienteControler
 */
@WebServlet("/")
public class ClienteControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClienteControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	    String action = request.getServletPath();
	    switch (action) {
		case "/add":
			addCliente(request,response);
			
			break;
		case "/update":
			updateCliente(request,response);
			
			break;
		case "/select":
			selectCliente(request,response);
			
			break;


		default:
			listCliente(request,response);
			break;
		}//cierra switch
	    
	}//cierra doget

	private void selectCliente(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

	    // Obtén el nombre del cliente desde la solicitud

	    String nombre = request.getParameter("nombre");



	    // Crea una instancia de ClienteDAO y llama al método mostrarCliente

	    ClienteDAO dao = new ClienteDAO();

	    Cliente cliente = dao.publicarCliente(nombre);



	    // Verifica si se encontró un cliente con el nombre especificado

	    if (cliente != null) {

	        // Obtiene los datos del cliente
	    	  String nombreCliente = cliente.getNombre();
	    	  String planCliente = cliente.getPlan();

	        int horas = cliente.getHoras();
	        
	        String peso = cliente.getPeso();

	        int eventos = cliente.getEventos();

	        



	        // Establece los atributos en el objeto request

	        request.setAttribute("nombre",nombreCliente);

	        request.setAttribute("plan", planCliente);

	        request.setAttribute("horas", horas);

	        request.setAttribute("peso", peso);

	        request.setAttribute("eventos", eventos);

	    }



	    // Redirige a mostrar-select.jsp

	    request.getRequestDispatcher("list-clientes.jsp").forward(request, response);

	}
	

	private void listCliente(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void updateCliente(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void addCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre=request.getParameter("nombre");
		String plan=request.getParameter("plan");
		int horas=Integer.parseInt(request.getParameter("horas"));
		String peso=request.getParameter("peso");
		int eventos=Integer.parseInt(request.getParameter("eventos"));
		Cliente cliente =new Cliente (nombre, plan,horas,peso,eventos);
		ClienteDAO dao =new ClienteDAO();
		dao.insertCliente(cliente);
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
