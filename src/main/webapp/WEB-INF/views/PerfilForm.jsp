<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	    
	    <main class="container-fluid m-main mt-4">
    	<div class="row justify-content-center">
    	<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-lx-4 px-4 mb-2 mt-4">
    	
		<div class="card p-3 shadow-sm">
			<form:form action="savePerfil" method="post" modelAttribute="perfil">
			<table class="w-100">
				<form:hidden path="id"/>
				<tr class="py-3">
					<td>UserName:</td>
					<td><form:input class="form-control" path="userName" /></td>
				</tr>
				<tr>
					<td>Nom:</td>
					<td><form:input class="form-control" path="nom" /></td>
				</tr>
				<tr>
					<td>Llinatge 1:</td>
					<td><form:input class="form-control" path="llinatge1" /></td>
				</tr>
				<tr>
					<td>Llinatge 2:</td>
					<td><form:input class="form-control" path="llinatge2" /></td>
				</tr>
				<tr>
					<td>DNI:</td>
					<td><form:input class="form-control" path="dni" /></td>
				</tr>
				<tr>
					<td>Telefon:</td>
					<td><form:input class="form-control" path="telefon" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input class="form-control" path="email" /></td>
				</tr>
				<tr>
					<td>ID Ciutat:</td>
					<td><form:input class="form-control" path="id_ciutat" /></td>
				</tr>
				<tr>
					<td>ID Nivell:</td>
					<td><form:input class="form-control" path="id_nivell" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input class="form-control" path="pass" /></td>
				</tr>
				<tr>
					<td></td>
					<td class="d-flex flex-row-reverse">
					<input class="btn btn-outline-success mt-2" type="submit" value="Guardar">
					<a href="<c:url value="/"/>"><input class="btn btn-outline-danger mt-2 mr-2" type="button" value="Cancelar"></a>
					</td>
				</tr>
			</table>
			</form:form>
		</div>
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