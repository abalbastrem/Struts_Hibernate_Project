<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Ligas</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
<style>
		body, html {
			background-color: #d3d3d3;
		}
		
		.main-login {
			background-color: #fff;
			-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		}
		
		.main-center {
			margin: 0 auto;
			padding: 40px 40px;
		}
	</style>
<body>
<%@ page import="java.util.List"%>
<%@ page import="dao.LigaDAO"%>
<%@ page import="bean.Liga"%>
<%@ page import="bean.Equipo"%>
	<div class="container">
		<div class="panel-heading text-center" style="margin-top: 7%">
				<h1>Ligas</h1>
				<hr>
		</div>
		<div class="row">
			<div class="main-login main-center" style="width: 75%">
				<button type="button" class="btn btn-default"></button>
				<table class="table table-hover table-bordered">
					<% 
					List<Liga> ligas = LigaDAO.getLigas(); 
					for (Liga liga : ligas) {	
					%>
					<tr>
						<th colspan="2"><%= liga.getId() %> - <%= liga.getNombre()%></th>
					</tr>
					<% 
					List<Equipo> equipos = liga.getEquipos();
					for (Equipo equipo : equipos) {
					%>
						<tr>
							<td><%= equipo.getId() %></td><td><%= equipo.getNombre()%></td>
						</tr>
					<% } %>
					<% } %>
				</table>
			</div>
		</div>
	</div>
</body>
</html>