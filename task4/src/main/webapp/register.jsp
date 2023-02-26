<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@ include file="headerfile.jsp"%>
<style>
.bb {
	background-image: url('img/back.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% 100%;	
}
</style>
</head>
<body class="bb">
	<div class="contanior-fluid">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card" style="border: 1px solid black">
					<div class="card-header  primary-background  text-center">
						<span class="fa fa-user-plus fa-3x"></span>

						<h3 class="text-center text-success">Registartion Form</h3>
					</div>

					<h6>
						<%
						String sucsssMsg = (String) session.getAttribute("sucsssMsg");
						String errorMsg = (String) session.getAttribute("errorMsg");
						if (sucsssMsg != null) {
						%>
						<p class="text-success text-center"><%=sucsssMsg%></p>
						<%
						session.removeAttribute("sucsssMsg");
						}
						if (errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>
						<%
						session.removeAttribute("errorMsg");
						}
						%>

					</h6>
					<div class="card-body">
						<form id="reg-form" action="register" method="POST">
							<div class="form-group">
								<label for="user_name">User Name</label> <input type="text"
									class="form-control" id="user_name"
									aria-describedby="emailHelp" placeholder="Enter name"
									name="user_name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="user_email"> <small id="emailHelp"
									class="form-text text-muted"></small>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="user_password">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Select Gender</label><br>
								<input type="radio" id="gender" name="gender" value="Male">
								Male <input type="radio" id="gender" name="gender"
									value="Female"> Female
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" name="user_check"> <label
									class="form-check-label" for="exampleCheck1">Agree
									terms and condition</label>
							</div>
							<br>
							<button type="submit" class="btn btn-outline-success float-right">Submit</button>
							<!-- <button class="btn btn-outline-warning float-right"
								style="margin-right: 7px">Reset</button> -->
						    <a href="login.jsp" class="btn btn-outline-warning float-right"
								style="margin-right: 7px">Back</a>
								
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	
</body>
</html>