<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Application</title>
</head>
<body>
<h1>Pizza Pizza</h1>

				<a href="findById.jsp">Find Pizza By ID</a>
				<a href="create.html">Create a New Pizza</a>


<%-- ${DEBUG} --%>
${pizzas}



</body>
</html>