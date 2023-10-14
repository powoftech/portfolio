<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

    <h1>List of albums</h1>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:if test="${cookie.userEmail.value != null}">
            <p>User Email:
                <c:out value='${cookie.userEmail.value}' />
            </p>
        </c:if>
        <c:if test="${cookie.firstName.value != null}">
            <p>Welcome back,
                <c:out value='${cookie.firstName.value}' />
            </p>
        </c:if>

        <p>
            <a href="download?action=checkUser&amp;productCode=8601">
                86 (the band) - True Life Songs and Pictures
            </a><br>

            <a href="download?action=checkUser&amp;productCode=pf01">
                Paddlefoot - The First CD
            </a><br>

            <a href="download?action=checkUser&amp;productCode=pf02">
                Paddlefoot - The Second CD
            </a><br>

            <a href="download?action=checkUser&amp;productCode=jr01">
                Joe Rut - Genuine Wood Grained Finish
            </a>
        </p>

        <footer style="position: fixed; bottom:0; width: inherit;">
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