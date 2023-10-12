<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/emailList/styles.css" type="text/css" />
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>First Name: </label>
    <span>${user.firstName}</span><br>

    <label>Last Name: </label>
    <span>${user.lastName}</span><br>

    <label>Email: </label>
    <span>${user.email}</span><br>

    <label>Date of Birth: </label>
    <span>${user.dateOfBirth}</span><br>

    <label>Acquisition Method: </label>
    <span>${user.acquisition}</span><br>

    <label>Contact Method: </label>
    <span>${user.contact}</span><br>

    <p>To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

    <form action="" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>

</body>

</html>