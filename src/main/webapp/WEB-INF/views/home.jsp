<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil CRUD</title>
        <link rel="icon" type="image/png" href="https://www.goatrails.dawman.info/img/favicon.png">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/global.css"/>">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body>
		<nav class="navbar navbar-light navbar-expand-md bg-light p-2 shadow-sm sticky-top sticky-nav px-3">
	    	<a class="navbar-brand mr-5" href="<c:url value="/"/>">
	            <img src="<c:url value="/resources/img/logo.png"/>" class="rounded mr-2 float-left" alt="" height="50px">
	        	<h1 class="text-secondary">GOATrails</h1>
	        </a>
	      	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      		<span class="navbar-toggler-icon"></span>
	      	</button>
	      	<div class="h5 collapse navbar-collapse mt-2" id="navbarNavDropdown">
	        	<ul class="navbar-nav ml-4 ml-md-auto">
	          		<li id="Social" class="nav-item mx-1">
	            		<a class="nav-link" href="<c:url value="/"/>"><i class="fas fa-user"></i> Perfils</a>
	          		</li>
	        	</ul>
	      </div>
	    </nav>
		
		<main class="container-fluid m-main">
    	<div class="row">
    	<div class="col px-4 mb-2 mt-4">
    		<h1 class="text-center text-secondary">Llista Perfils</h1>
    		<a href="newPerfil" class="btn btn-success rounded shadow-sm ml-2"><i class="fas fa-user-plus"></i> Nou Perfil</a>
    	</div>
    	</div>
    	<div class="row">
    	<div class="col overflow-auto mx-3">
    		<table class="table table-striped table-hover table-hover shadow-sm rounded-lg overflow-hidden">
	        	<thead class="thead-dark">
	        	<tr>
	        	<th scope="col">ID</th>
	        	<th scope="col">UserName</th>
	        	<th scope="col">Nom</th>
	        	<th scope="col">Llinatge1</th>
	        	<th scope="col">Llinatge2</th>
	        	<th scope="col">DNI</th>
	        	<th scope="col">Telefon</th>
	        	<th scope="col">Email</th>
	        	<th scope="col">ID_Ciutat</th>
	        	<th scope="col">ID_Nivell</th>
	        	<th scope="col">Password</th>
	        	<th scope="col"></th>
	        	<th scope="col"></th>
	        	</tr>
	        	</thead>
	        	<tbody>
				<c:forEach var="perfil" items="${listPerfil}" varStatus="status">
	        	<tr>
	        		<td class="font-weight-bold" scope="row"s>${status.index + 1}</td>
					<td>${perfil.userName}</td>
					<td>${perfil.nom}</td>
					<td>${perfil.llinatge1}</td>
					<td>${perfil.llinatge2}</td>
					<td>${perfil.dni}</td>
					<td>${perfil.telefon}</td>
					<td>${perfil.email}</td>
					<td>${perfil.id_ciutat}</td>
					<td>${perfil.id_nivell}</td>
					<td>${perfil.pass}</td>
					<td>
						<a class="btn btn-outline-info btn-sm" href="editPerfil?id=${perfil.id}"><i class="fas fa-edit"></i> Edita</a>
					</td>
					<td>
						<a class="btn btn-outline-danger btn-sm" href="deletePerfil?id=${perfil.id}"><i class="fas fa-trash"></i> Elimina</a>
					</td>
							
	        	</tr>
				</c:forEach>
				</tbody>	        	
			</table>
    	</div>
    	</div>
    	</main>
    	
    <footer class="footer container-fluid">
	    <div class="row text-center bg-dark p-2">
	        <div class="col text-center bg-dark p-2">
	        	<a href="<c:url value="/"/>" class="text-secondary">&copy; 2020 Copyright - GOATrails.com</a>
	        </div>
		</div>
	</footer>
    </body>
</html>
