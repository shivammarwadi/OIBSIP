<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.entitey.User"%>
<%@ include file="headerfile.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<style>
	.banner-background
   {
    clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 95%, 66% 90%, 30% 100%, 0 90%, 0 0);
   }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
  <a class="navbar-brand" href="index.jsp">Online Exam System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%
    	User user=(User)session.getAttribute("user");
 
    	{%>
    		<form class="form-inline-right my-2 my-lg-0 ">
  			<span class="text-white" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user"> <%=user.getName() %></i></span>
  			 <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger ml-4 text-white">Logout</a>
       		</form>
    	<%}
    %>
    </div>
  </nav>
 
 <div class="container-fluid p-0 m-0">
<div class="jumbotron text-white banner-background" style="background-color:blue">
<div class="container">
  <h3 class="display-3">Welcome to Online Exam</h3>
  
  <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[1] The programs for these machines (such as a player piano's scrolls) did not produce different behavior in response to different inputs or conditions.</p>
	<a href="Exam.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-star"></span> Start Exam</a>
</div>
</div>
</div>

		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body text-center"
						style="background-color: #f7faf8;">
						<h4>Do You Want Logout...</h4>
						<button type="button" class="btn btn-secondary mt-3"
							data-dismiss="modal">No</button>
						<a href="logoutServlet" class="btn btn-primary mt-3">Yes</a>
					</div>
				</div>
			</div>
		</div>
	
	
	
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container text-center">
      
        <h5 class="modal-title mt-3" id="exampleModalLabel"> <%= user.getName() %></h5>
        <br>
        <div id="profile_detail">
		 <table class="table">
		  <tbody>
		    <tr>
		      <th scope="row">ID:</th>
		      <td> <%= user.getId() %></td>
		    </tr>
		     <tr>
		      <th scope="row">Name:</th>
		      <td> <%= user.getName() %></td>
		    </tr>
		    <tr>
		      <th scope="row">Email:</th>
		      <td> <%= user.getEmail() %></td>
		    </tr>
		   <tr>
		      <th scope="row">Password:</th>
		      <td> <%= user.getPassword()%></td>
		    </tr>
		  </tbody>
		</table>
     </div>
     </div>
      </div>
  
  <!--Edit Profile  -->
	<div id="Profile_edit" style="display:none;">
    	<h3 class="mt-2">Please Edit Carefully</h3>
    		<form action="EditServlet" method="post">
    			<table class="table">
    		   <tbody>
    				<tr>
    				 <td>ID:</td>
      				 <td> <%= user.getId() %></td>
    				</tr> 
    				<tr>
    				 <td>Name:</td>
      				 <td><input type="text" name="user_name" class="form-control" value="<%= user.getName() %>"></td>
    				</tr>
    			  	<tr>
    				 <td>Email:</td>
      				 <td> <input type="email" name="user_email" class="form-control" value="<%= user.getEmail() %>"></td>
    				</tr>
    				<tr>
    				 <td>Password:</td>
      				 <td> <input type="password" name="user_pass" class="form-control" value="<%= user.getPassword() %>"></td>
    				</tr>		
    		  </tbody>
    			</table>
    			<!-- <div class="container">
    				<button type="submit" class="btn btn-outline-primary">Save</button>
    			</div> -->
    		</form>
    </div>
	<div class="modal-footer">
	<button type="submit" class="btn btn-outline-primary">Save</button>
     <!--    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
         <button id="edit_profile" type="button" class="btn btn-primary">Edit</button>
      </div>
      </div>
  </div>
  </div>
  <script>
  	$(document).ready(function()
    {
  		let editStatus=false;
  		
  		$('#edit_profile').click(function()
  	    {
  			if(editStatus==false)
  				{
		  			$('#profile_detail').hide()
		  			
		  			$('#Profile_edit').show()	
		  			editStatus=true;
		  			$(this).text("Back")
  				}
  			else
  				{
	  				$('#profile_detail').show()
		  			
		  			$('#Profile_edit').hide()	
		  			editStatus=false;
	  				$(this).text("Edit")
  				}
  		})
  	});
</script>
</body>
</html>