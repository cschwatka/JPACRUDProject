<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../nav.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Pizza</title>
</head>
<body>
	<h1>Editing Pizza ID: ${pizza.id}</h1>
			<br>

			<form action="update.do" method="POST" id="updateForm">

				<label for="id"></label> <input type="hidden" name="id" value="${pizza.id}"> 
				<label for="name">Name:</label> <input type="text" name="name" value="${pizza.name}"><br> 
				<label for="description">Description: </label> <input type="text" name="description" value="${pizza.description}"> <br>
				<label for="size">Size: </label> <input type="text" name="size" value="${pizza.size}"> <br>
				<label for="crust">Crust: </label> <select name="crust" id="crust" value="${pizza.crust}">
					<option value="Original Crust">Original Crust</option>
					<option value="Thin Crust">Thin Crust</option></select><br>
				<label for="cheese">Cheese: </label> <select name="cheese" value="${pizza.cheese}">
					<option value="Normal Cheese">Normal Cheese</option>
					<option value="Light Cheese">Light Cheese</option>
					<option value="No Choose">No Cheese</option></select><br>
				<label for="meat">Meat: </label> <select name="meat" value="${pizza.meat}">
					<option value="Pepperoni">Pepperoni</option>
					<option value="Sausage">Sausage</option>
					<option value="Spicy Sausage">Spicy Sausage</option>
					<option value="Meatball">Meatball</option>
					<option value="Philly Steak">Philly Steak</option>
					<option value="Ham">Ham</option>
					<option value="Canadian Bacon">Canadian Bacon</option>
					<option value="Salami">Salami</option>
					<option value="Anchovies">Anchovies</option>
					<option value="Grilled Chicken">Grilled Chicken</option></select><br>
				<label for="meat">Vegetable: </label> <select name="vegetable" value="${pizza.vegetable}">
					<option value="Olives">Olives</option>
					<option value="Mushrooms">Mushrooms</option>
					<option value="Jalapenos">Jalapenos</option>
					<option value="Pineapple">Pineapple</option>
					<option value="Green Peppers">Green Peppers</option>
					<option value="Roma Tomatoes">Roma Tomatoes</option>
					<option value="Onions">Onions</option>
					<option value="Spinach">Spinach</option>
					<option value="Green Chiles">Green Chiles</option>
					<option value="Bananna Peppers">Bananna Peppers</option></select><br>
					 <br>
				 <input type="submit" value="Update" />

			</form>  

</body>
</html>