<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %> 
<%
		Class.forName("com.mysql.cj.jdbc.Driver");    //instalo y conecto el driver de mysql
		Connection conexion2 = null;                    //conexion a la base de datos
		
		if(request.getParameter("operacion") != null){   // si resquestgetparameter no es igual a null ejecuto el try catch

			try{											//obligatorio poner un control de excepciones
				String url = "jdbc:mysql://localhost:3306/webactividades";          //importamos  y conectamos con de la base de datos
				String usuario = "noemi";
				String contrasena = "noemi";
				
				conexion2 = DriverManager.getConnection(url, usuario, contrasena);                     //borrar de la base de datos
				
				String peticioninsercion = "DELETE FROM actividades WHERE identificador = "+request.getParameter("id")+";";              
				PreparedStatement inserto = conexion2.prepareStatement(peticioninsercion);
				inserto.executeUpdate();
				
				
				
			}catch(Exception e){
				e.printStackTrace();
				
			}finally{
				if(conexion2 != null){
					conexion2.close(); 
			}
		}
		}
		%>
<%
		Class.forName("com.mysql.cj.jdbc.Driver");    //instalo y conecto el driver de mysql
		Connection conexion1 = null;                    //conexion a la base de datos

		if(request.getParameter("titulo") != null){   // si resquestgetparameter no es igual a null ejecuto el try catch

			try{											//obligatorio poner un control de excepciones
				String url = "jdbc:mysql://localhost:3306/webactividades";          //importamos  y conectamos con de la base de datos
				String usuario = "noemi";
				String contrasena = "noemi";
				
				conexion1 = DriverManager.getConnection(url,usuario,contrasena);                     //insertar en base de datos
				
				String peticioninsercion = "INSERT INTO actividades VALUES(NULL,'"+request.getParameter("titulo")+"','"+request.getParameter("imagen")+"','"+request.getParameter("dia")+"','"+request.getParameter("horario")+"','"+request.getParameter("descripcion")+"','"+request.getParameter("precio")+"','"+request.getParameter("ubicacion")+"')";               
				PreparedStatement inserto = conexion1.prepareStatement(peticioninsercion);
				inserto.executeUpdate();
				
				
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				if(conexion1 != null){
					conexion1.close(); 
			}
		}
		}
		%>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");    //instalo y conecto el driver de mysql
		Connection conexion3 = null;                    //conexion a la base de datos

		if(request.getParameter("titulo") != null){   // si resquestgetparameter no es igual a null ejecuto el try catch

			try{											//obligatorio poner un control de excepciones
				String url = "jdbc:mysql://localhost:3306/webactividades";          //importamos  y conectamos con de la base de datos
				String usuario = "noemi";
				String contrasena = "noemi";
				
				conexion3 = DriverManager.getConnection(url,usuario,contrasena);                     //insertar en base de datos
				
				
				String peticioninsercion=("UPDATE actividades SET titulo= '"+request.getParameter("titulo")+"' AND imagen = '"+request.getParameter("imagen")+"' AND dia = '"+request.getParameter("dia")+"' AND horario = '"+request.getParameter("horario")+ "' AND descripcion = '"+request.getParameter("descripcion")+"' AND precio = '"+request.getParameter("precio")+"' AND ubicacion = '"+request.getParameter("ubicacion")+"'");
				PreparedStatement inserto = conexion3.prepareStatement(peticioninsercion);
				inserto.executeUpdate();
				
				
				
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				if(conexion3 != null){
					conexion3.close(); 
			}
		}
		}
		%>


<h1>Panel de Control</h1>
	<table border=2>
		<thead>
			<tr>
				<th>Identificador</th>
				<th>titulo</th>
				<th>imagen</th>
				<th>dia</th>
				<th>horario</th>
				<th>descripcion</th>
				<th>precio</th>
				<th>ubicacion</th>
			</tr>
		</thead>
		<tbody>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");    //instalo y conecto el driver de mysql
		Connection conexion = null;                    //conexion a la base de datos
		
		try{											//obligatorio poner un control de excepciones
			String url = "jdbc:mysql://localhost:3306/webactividades";          //importamos  y conectamos con de la base de datos
			String usuario = "noemi";
			String contrasena = "noemi";
			
			conexion = DriverManager.getConnection(url,usuario,contrasena);
			
			Statement peticion = conexion.createStatement();							//Realizamos peticion y resultados a la base de datos
			ResultSet resultados = peticion.executeQuery("SELECT * FROM actividades");
			
			while (resultados.next()){                       //mientras que siga habiendo resultados
				out.println(""+									//implementamos las funcion de ver en el panel de control la base de datos
					"<tr>"+
						"<td>"+resultados.getInt("Identificador")+"</td>"+
						"<td>"+resultados.getString("titulo")+"</td>"+
						"<td>"+resultados.getString("imagen")+"</td>"+
						"<td>"+resultados.getString("dia")+"</td>"+
						"<td>"+resultados.getString("horario")+"</td>"+
						"<td>"+resultados.getString("descripcion")+"</td>"+
						"<td>"+resultados.getString("precio")+"</td>"+
						"<td>"+resultados.getString("ubicacion")+"</td>"+
						"<td><a href='?operacion=borrar&id="+resultados.getInt("Identificador")+"'><button>Borrar</button></a></td>"+

						
						"</tr>"+
						"");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(conexion != null){
				conexion.close();
			}
		}
		%>
			<form action="?" method="POST">
			<tr>
				<th></th>
				<th><input type="text" name="titulo"></th>
				<th><input type="text" name="imagen"></th>
				<th><input type="text" name="dia"></th>
				<th><input type="text" name="horario"></th>
				<th><input type="text" name="descripcion"></th>
				<th><input type="text" name="precio"></th>
				<th><input type="text" name="ubicacion"></th>
				<th><input type="submit"></th>
				</tr>
			</form>
		</tbody>
	</table>
</body>
</html>

