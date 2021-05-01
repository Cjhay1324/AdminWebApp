<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page='header.jsp' />
<body>
	<nav class="navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="#">
			<img src="images/cpi-logo.png" width="30" height="30" class="d-inline-block align-top" alt="cpi-log.jpeg">
			Administrative Panel
		</a>
		<button class="navbar-toggler d-block d-md-none" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse-sm d-md-none" id="navbarText">
	    <div class="col text-center">
			<img class="rounded-circle w-50 mt-4" src="images/profile.jpg" alt="profile-img">
			<span class="font-italic d-block text-white py-2 my-2">Cj Bonatin</span>
			<hr class="text-white">
		</div>
		<div class="col font-weight-bold">
			<a class="nav-link text-white pl-5 py-3" href="#">Dashboard</a>
			<a class="nav-link text-white pl-5 py-3 active" href="#">Users</a>
			<a class="nav-link text-white pl-5 py-3" href="#">Account</a>
			<a class="nav-link text-white pl-5 py-3" href="#">Logout</a>
			<a class="nav-link text-white pl-5 py-3 mt-4" href="#" id="collapse">Collapse</a>
		</div>
	  </div>
	</nav>
	<div class="w-100 mh-100 h-100" id="parent-container">
		<div class="row row-cols-2 w-100 h-100 m-0">
			<div class="h-100 col-3 d-none d-md-block border-right border-white p-0">
				<nav class="nav sidebar bg-dark flex-column pr-0 h-100" >
					<div class="row row-cols-1">
						<div class="col text-center">
							<img class="rounded-circle w-50 mt-4" src="images/profile.jpg" alt="profile-img">
							<span class="font-italic d-block text-white py-2 my-2">Cj Bonatin</span>
							<hr class="text-white">
						</div>
						<div class="col font-weight-bold">
							<a class="nav-link text-white pl-5 py-3" href="#" id="dash">Dashboard</a>
							<a class="nav-link text-white pl-5 py-3" href="#" onclick="onClickMenu('Users')">Users</a>
							<a class="nav-link text-white pl-5 py-3" href="#">Account</a>
							<a class="nav-link text-white pl-5 py-3" href="#">Logout</a>
							<a class="nav-link text-white pl-5 py-3 mt-3" href="#" id="collapse" hidden>Collapse</a>
						</div>
					</div>
				</nav>
			</div>	
			<div class="col-12 col-md-9 col-sm-12 w-100" id="content-container">
				
			</div>
		</div>
	</div>
</body>					
<script type="text/javascript">
</script>
</html>