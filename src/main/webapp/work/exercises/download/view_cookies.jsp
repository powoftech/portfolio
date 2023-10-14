<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

  <h1>Cookies</h1>

  <p>Here's a table with all of the cookies that this
    browser is sending to the current server.</p>

  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <table>
      <tr>
        <th>Name</th>
        <th>Value</th>
      </tr>
      <c:forEach var="c" items="${cookie}">
        <tr>
          <td>
            <c:out value='${c.value.name}' />
          </td>
          <td>
            <c:out value='${c.value.value}' />
          </td>
        </tr>
      </c:forEach>
    </table>

    <p><a href="download?action=viewAlbums">View list of albums</a></p>

    <p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>

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