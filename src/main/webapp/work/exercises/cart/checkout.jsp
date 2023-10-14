<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css"
        type="text/css" />
</head>

<body>
    <h1>Order completed</h1>
    <p>Click on the browser's Back button to continue.</p>

    <footer style="position: fixed; bottom:0; width: inherit;">
        <hr
            style=" display: block; border-top: 3px solid #bbb; border-style: inset; border-width: 2px; margin: 1em auto 1em auto;">
        <div style="height: 100px; display: flex; align-items: center; justify-content: center; padding: 0;">
            <select name="exercises" id="exercise-select" style="font-size: 140%; padding: 0"
                onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                <option value="">--Exercises--</option>
                <option value="/work/exercises/cart/" selected>Cart</option>
                <option value="/work/exercises/download/">Download</option>
                <option value="/work/exercises/email/">Email</option>
                <option value="/work/exercises/survey/">Survey</option>
            </select>
        </div>
    </footer>
</body>

</html>