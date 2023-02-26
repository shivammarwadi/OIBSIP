<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@ include file="headerfile.jsp"%>
</head>
<style>
.bb {
	background-image: url('img/back.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% 100%;	
}
</style>
<body class="bb">
	<div class="contanior-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="border: 1px solid black">
					<div class="card-header  primary-background  text-center">
						<span class="fa fa-user-plus fa-3x"></span>

						<h3 class="text-center text-success">Login Form</h3>
					</div>
					<%
					String invalid = (String) session.getAttribute("invalid");
					if (invalid != null) {
					%>
					<p class="text-danger text-center"><%=invalid%></p>
					<%
					session.removeAttribute("invalid");
					}

					String logout = (String) session.getAttribute("logout");
					if (logout != null) {
					%>
					<p class="text-success text-center"><%=logout%></p>
					<%
					session.removeAttribute("logout");
					}
					%>
					<div class="card-body">
						<form action="loginServlett" method="post" style="padding-top: 20px">
							<div class="form-group">
								<label for="exampleInputPassword1">Email Address</label> <input
									type="email" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Email" name="user_email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									type="password" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Password"
									name="user_pass"> <br>
								<a style="float: right" href="register.jsp">Do You have
									already Register?</a>
							</div>
							<div class="">
								<button type="submit" class="btn btn-outline-success btn-lg">Login</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>