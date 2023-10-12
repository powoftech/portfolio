<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/emailList/styles.css" type="text/css">

</head>

<body>
    <header>
        <img src="${pageContext.request.contextPath}/images/murachlogo.jpg" alt="Murach Logo" width="100">
        <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
    </header>

    <form action="" method="post">
        <input type="hidden" name="action" value="add">

        <section>
            <h2>Your information:</h2>

            <label>First Name</label>
            <input type="text" name="firstName" required>

            <label>Last Name</label>
            <input type="text" name="lastName" required>

            <label>Email</label>
            <input type="email" name="email" required>

            <label>Date of Birth</label>
            <input type="date" name="dateOfBirth" max="2023-09-14" required>
        </section>

        <section>
            <h2>How did you hear about us?</h2>

            <label><input type="radio" name="acquisition" value="Search engine">Search engine</label>
            <label><input type="radio" name="acquisition" value="Word of mouth">Word of mouth</label>
            <label><input type="radio" name="acquisition" value="Social media">Social media</label>
            <label><input type="radio" name="acquisition" value="Other" required>Other</label>
            <br>
        </section>

        <section>
            <h2>Would you like to receive announcements about new CDs and special offers?</h2>

            <input type="checkbox" name="add"> YES, I'd like that.<br>
            <input type="checkbox" name="add"> YES, please send me email announcements.<br>

            <p>Please contact me by:
                <select name="contact">
                    <option value="" disabled selected>--Email or postal mail--</option>
                    <option value="Email">Email</option>
                    <option value="Postal mail">Postal mail</option>
                    <option value="Both">Both</option>
                </select>
            </p>
        </section>

        <div>
            <input type="submit" value="Submit" id="submit">
        </div>
    </form>
</body>

</html>