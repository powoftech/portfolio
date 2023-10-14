<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>

  <h1>Your cart</h1>

  <table>
    <tr>
      <th>Quantity</th>
      <th>Description</th>
      <th>Price</th>
      <th>Amount</th>
      <th></th>
    </tr>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:forEach var="item" items="${cart.items}">
        <tr>
          <td>
            <form action="" method="post">
              <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
              <input type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
              <input type="submit" value="Update">
            </form>
          </td>
          <td>
            <c:out value='${item.product.description}' />
          </td>
          <td>${item.product.priceCurrencyFormat}</td>
          <td>${item.totalCurrencyFormat}</td>
          <td>
            <form action="" method="post">
              <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
              <input type="hidden" name="quantity" value="0">
              <input type="submit" value="Remove Item">
            </form>
          </td>
        </tr>
      </c:forEach>
  </table>

  <p><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</p>

  <form action="" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue Shopping">
  </form>

  <form action="" method="post">
    <input type="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout">
  </form>

  <footer style="position: fixed; bottom:0; width: 100%;">
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