<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

    <h1>Cookies</h1>

    <p>All persistent cookies have been removed from this browser.</p>

    <p><a href="download?action=viewAlbums">View list of albums</a></p>

    <p><a href="?action=viewCookies">View all cookies</a></p>

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