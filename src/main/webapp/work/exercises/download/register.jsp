<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

    <h1>Download registration</h1>

    <p>To register for our downloads, enter your name and email
        address below. Then, click on the Submit button.</p>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <form action="download" method="post">
            <input type="hidden" name="action" value="registerUser">
            <label class="pad_top">Email:</label>
            <input type="email" name="email" value="${user.email}"><br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="firstName" value="${user.firstName}"><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="lastName" value="${user.lastName}"><br>
            <label>&nbsp;</label>
            <input type="submit" value="Register" class="margin_left">
        </form>

        <footer style="position: fixed; bottom:0; width: 100%;">
            <hr
                style=" display: block; border-top: 3px solid #bbb; border-style: inset; border-width: 2px; margin: 1em auto 1em auto;">
            <div style="height: 100px; display: flex; align-items: center; justify-content: center; padding: 0;">
                <select name="exercises" id="exercise-select" style="font-size: 140%; padding: 0"
                    onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                    <option value="">--Exercises--</option>
                    <option value="/work/exercises/cart/">Cart</option>
                    <option value="/work/exercises/download/" selected>Download</option>
                    <option value="/work/exercises/email/">Email</option>
                    <option value="/work/exercises/survey/">Survey</option>
                </select>
            </div>
        </footer>
</body>

</html>