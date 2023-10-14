<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
    <h1>Thanks for taking our survey!</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>
    <label>Updates:</label>
    <span>${user.wantsUpdates}</span><br>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:if test="${user.wantsUpdates == 'Yes'}">
            <label>Contact Via:</label>
            <span>${user.contactVia}</span>
        </c:if>

        <footer style="position: fixed; bottom:0; width: 100%;">
            <hr
                style=" display: block; border-top: 3px solid #bbb; border-style: inset; border-width: 2px; margin: 1em auto 1em auto;">
            <div style="height: 100px; display: flex; align-items: center; justify-content: center; padding: 0;">
                <select name="exercises" id="exercise-select" style="font-size: 140%; padding: 0"
                    onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                    <option value="">--Exercises--</option>
                    <option value="/work/exercises/cart/">Cart</option>
                    <option value="/work/exercises/download/">Download</option>
                    <option value="/work/exercises/email/">Email</option>
                    <option value="/work/exercises/survey/" selected>Survey</option>
                </select>
            </div>
        </footer>

</body>

</html>