<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>Create a Pizza</h1><br>

	<form action="create.do" method="POST" id="createForm">

				<label for="title">Title:</label> <input type="text" name="title"><br> 
				<label for="description">Description: </label> <input type="text" name="description"> <br>
				<label for="size">Size: </label> <input type="text" name="size"> <br>
				
				<label for="crust">Crust: </label> <select name="crust" id="crust">
					<option value="Original Crust">Original Crust</option>
					<option value="Thin Crust">Thin Crust</option></select>
				
				<label for="cheese">Cheese: </label> <select name="cheese">
					<option value="Normal Cheese">Normal Cheese</option>
					<option value="Light Cheese">Light Cheese</option>
					<option value="No Choose">No Cheese</option></select>
					
				<label for="meat">Meat: </label> <select name="meat">
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
					
				<label for="meat">Vegetable: </label> <select name="vegetable">
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
		

		<input type="submit" value="Add Pizza" />
		<br>

	</form>
		



</body>
</html>