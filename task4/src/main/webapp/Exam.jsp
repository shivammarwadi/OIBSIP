<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam page</title>
<%@ include file="headerfile.jsp"%>
</head>
<body>

	<!--Timer  -->

	<!-- Display the countdown timer in an element -->
	<div id="demo"
		style="font-size: 40px; text-align: center; margin-top: 20px">
		<script>
			var minutes=1;var seconds=60;
			// Update the count down every 1 second
			var x = setInterval(function() 
		  {
				if(seconds==0)
				{
						seconds=60;
						minutes--;
				}
				seconds =seconds-1;
				document.getElementById("demo").innerHTML =  minutes + "m " + seconds + "s ";

				// If the count down is finished, write some text
				if (minutes ==0 && seconds==0) {
					clearInterval(x);
					document.getElementById("demo").innerHTML = "EXPIRED";
					location.href='examOver.jsp';
				}
			},1000);
		</script>
	</div>
		
	<!--Timer End  -->

	<div class="contanior-fluid">
		<div class="row">
			<div class="col-md-12" style="margin-left:50px">
					<form>
						<div class="form-group" style="font-size:20px">
							<label for=" ">Que1: Which one among these is not a primitive datatype?</label><br>
							<input type="radio" id="html" name="fav_language" value="int"> int<br>
							<input type="radio" id="html" name="fav_language" value="Float"> Float<br>
							<input type="radio" id="html" name="fav_language" value="boolean"> boolean<br>
							<input type="radio" id="html" name="fav_language" value="char"> char<br>
						</div>
						
						<div class="form-group" style="font-size:20px">
							<label for=" ">Que2: Who invented Java Programming??</label><br> 
							<input type="radio" id="html" name="fav_language1" value="int"> Guido van Rossum<br>
							<input type="radio" id="html" name="fav_language1" value="Float"> James Gosling<br>
							<input type="radio" id="html" name="fav_language1" value="boolean"> Dennis Ritchie<br>
							<input type="radio" id="html" name="fav_language1" value="char"> Bjarne Stroustrup<br>
						</div>
						
						<div class="form-group" style="font-size:20px">
							<label for=" ">Que3: Which one of the following is not a Java feature??</label><br>
			     			<input type="radio" id="html" name="fav_language2" value="int"> Object-oriented<br>
							<input type="radio" id="html" name="fav_language2" value="Float"> Use of pointers<br>
							<input type="radio" id="html" name="fav_language2" value="boolean"> Portable<br>
							<input type="radio" id="html" name="fav_language2" value="char"> Dynamic and Extensible<br>
						</div>
					</form>
					<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger ms-4 text-white ">End Exam</a>
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
						<h4>Click Yes to end the Test.. </h4>
						<button type="button" class="btn btn-secondary mt-3"
							data-dismiss="modal">No</button>
						<a href="examOver.jsp" class="btn btn-primary mt-3">Yes</a>
					</div>
				</div>
			</div>
		</div>
	
	
</body>
</html>