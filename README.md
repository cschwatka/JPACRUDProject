## JPACRUDProject

### Description

Pizza Pizza is a full-stack web app JPA and Spring Boot. A single table was created from scratch that holds 'pizza' data. A user can Create, Update, and Destroy data. 'DRY' effort was made at all levels using the latest JPA syntax.

Although not complete in this version, the goal is to present the user with a mobile-friendly view of the pizza data in product cards. Top-level attributes will be editable from the cards themselves which will be presented as a list of cards similar to Papa John's category pages. Then, "Customizing" a pizza should show the user what the pizza itself looks like before saving/adding it to the database.


### Lesson Learned
Passing data between JSPs (by way of the Controller this time, thanks Rob!), is superior to passing pass the form data itself directly between JSPs using JSTL variables. This latter strategy does not work when the receiving JSP is in the protect WEB-INF folder. Passing it to the controller and updating the model itself is the way to go. Next, it's possible to corrupt MAMP and having everything saved and committed often really saved me this weekend when I had to re-install MAMP. Next,  JSP (templating in general) syntax errors often present as routing issues. Next time, more vanilla JSPs will be used to first test the successful routing of all pages before adding conditional logic because if that logic breaks it's not always clear that it is the JSP itself causing the issue (Spring Boot Console doesn't always show JSP errors).

### Technology Used

1. MySQL Database for Objects (pizzas, created from scratch)
2. DAO (Connectivity, JPA)
3. CRUD (JPA)
4. HTML/CSS (Tailwind/Post CSS)
5. Spring Boot(JSP, Annotations over XML, etc.)
6. JUnit (testing)
