<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/estilos.css">
<title>Web actividades para personas mayores</title>
</head>
<body>
	<header>
		<h1>Actividades para la tercera edad</h1>
	</header>
	<main>
		<h3>webActividades</h3>	                     
		<%@ page import="java.sql.*" %>                
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
			
			while(resultados.next()){                       //mientras que siga habiendo resultados
				out.println(""+									//concatena con java y sacamos los datos de la base de datos
					"<article>"+
						"<h4>"+resultados.getString("titulo")+"</h4>"+
						"<img src='imagenes/"+resultados.getString("imagen")+"'>"+
						"<p class='dia'>"+resultados.getString("dia")+"</p>"+
						"<p class='horario'>"+resultados.getString("horario")+"</p>"+
						"<p class='descripcion'>"+resultados.getString("descripcion")+"</p>"+
						"<p class='precio'>"+resultados.getString("precio")+"</p>"+
						"<p class='ubicacion'>"+resultados.getString("ubicacion")+"</p>"+	
					"</article>"+
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
	</main>
	<footer>
		<p>(c)2024 Noemi Moran San Juan</p>
	</footer>
</body>
</html>