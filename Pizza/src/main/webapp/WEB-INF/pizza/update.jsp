<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Pizza</title>
</head>
<body>

	<% String passedId = request.getParameter("id");
	%>
	<%
	String passedName = request.getParameter("name");
	%>
	<%
	String passedDescription = request.getParameter("description");
	%>
	<%
	String passedSize = request.getParameter("size");
	%>
	<%
	String passedCrust = request.getParameter("crust");
	%>
	<%
	String passedCheese = request.getParameter("cheese");
	%>
	<%
	String passedMeat = request.getParameter("meat");
	%>
	<%
	String passedVegetable = request.getParameter("vegetable");
	%>

					<h1>Editing Film ID: <%=passedId%></h1>
			<br>

			<form action="update.do" method="POST" id="updateForm">


				<label for="id"></label> <input type="hidden" name="id" value="<%=passedId%>"> 
				
				
				<label for="title">Name:</label> <input type="text" name="name" value="<%=passedName%>"><br> 
				<label for="description">Description: </label> <input type="text" name="description" value="<%=passedDescription%>"> <br>
				<label for="size">Size: </label> <input type="text" name="size" value="<%=passedSize%>"> <br>
				
				<label for="crust">Crust: </label> <select name="crust" id="crust" value="<%=passedCrust%>">
					<option value="Original Crust">Original Crust</option>
					<option value="Thin Crust">Thin Crust</option></select>
				
				<label for="cheese">Cheese: </label> <select name="cheese" value="<%=passedCheese%>">
					<option value="Normal Cheese">Normal Cheese</option>
					<option value="Light Cheese">Light Cheese</option>
					<option value="No Choose">No Cheese</option></select>
					
				<label for="meat">Meat: </label> <select name="meat" value="<%=passedMeat%>">
					<option value="Pepperoni">Pepperoni</option>
					<option value="Sausage">Sausage</option>
					<option value="Spicy Sausage">Spicy Sausage</option>
					<option value="Meatball">Meatball</option>
					<option value="Philly Steak">Philly Steak</option>
					<option value="Ham">Ham</option>
					<option value="Canadian Bacon">Canadian Bacon</option>
					<option value="Salami">Salami</option>
					<option value="Anchovies">Anchovies</option>
					<option value="Grilled Chicken">Grilled Chicken</option></select>
					
				<label for="meat">Vegetable: </label> <select name="vegetable" value="<%=passedVegetable%>">
					<option value="Olives">Olives</option>
					<option value="Mushrooms">Mushrooms</option>
					<option value="Jalapenos">Jalapenos</option>
					<option value="Pineapple">Pineapple</option>
					<option value="Green Peppers">Green Peppers</option>
					<option value="Roma Tomatoes">Roma Tomatoes</option>
					<option value="Onions">Onions</option>
					<option value="Spinach">Spinach</option>
					<option value="Green Chiles">Green Chiles</option>
					<option value="Bananna Peppers">Bananna Peppers</option></select>
					
					 <br>
				 <input type="submit" value="Update" />

			</form>



</body>
</html>