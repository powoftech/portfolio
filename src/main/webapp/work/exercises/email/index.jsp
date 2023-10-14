<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <jsp:useBean id="user" scope="session" class="murach.email.business.User"/>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
        <label class="pad_top">Email:</label>
        <input type="email" name="email"
               value="<jsp:getProperty name="user" property="email"/>"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName"
               value="<jsp:getProperty name="user" property="firstName"/>"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName"
               value="<jsp:getProperty name="user" property="lastName"/>"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>

    <footer style="position: fixed; bottom:0; width: inherit;">
        <hr
            style=" display: block; border-top: 3px solid #bbb; border-style: inset; border-width: 2px; margin: 1em auto 1em auto;">
        <div style="height: 100px; display: flex; align-items: center; justify-content: center; padding: 0;">
            <select name="exercises" id="exercise-select" style="font-size: 140%; padding: 0"
                onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                <option value="">--Exercises--</option>
                <option value="/work/exercises/cart/">Cart</option>
                <option value="/work/exercises/download/">Download</option>
                <option value="/work/exercises/email/" selected>Email</option>
                <option value="/work/exercises/survey/">Survey</option>
            </select>
        </div>
    </footer>
</body>
</html>