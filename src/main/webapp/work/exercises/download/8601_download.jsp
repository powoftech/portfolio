<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

    <h1>Downloads</h1>

    <h2>${product.description}</h2>

    <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>You Are a Star</td>
            <td><a href="https://youtu.be/K5t6Oz16oeQ">YouTube</a></td>
        </tr>
        <tr>
            <td>Don't Make No Difference</td>
            <td><a href="https://youtu.be/sLV3U8nxpjk">YouTube</a></td>
        </tr>
    </table>

    <p><a href="?action=viewAlbums">View list of albums</a></p>

    <p><a href="?action=viewCookies">View all cookies</a></p>

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