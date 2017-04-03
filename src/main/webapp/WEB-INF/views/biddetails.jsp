<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
  <title>Детали заявки</title>

  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-4"><h3><a href="../../index.jsp">Перейти на главную</a></h3></div>
    <div class="col-md-4"><h1 class="text-center">DonorDP</h1></div>
    <div class="col-md-4"><h3 class="text-right"><a href="../bids">Перейти к списку заявок</a></h3></div>
  </div>
  <div class="row">

    <h2>Детали заявки</h2>

    <table class="table table-bordered">
      <tr class="bg-danger">
        <th>ID</th>
        <th>Ф.И.О.</th>
        <th>Больница</th>
        <th>Контакты</th>
        <th>Количество</th>
        <th>Информация</th>
        <th>Группа</th>
        <th>Оплата</th>
        <th>Комментарии</th>
      </tr>
      <tr class="bg-warning">
        <td>${bid.id}</td>
        <td>${bid.bidUserName}</td>
        <td>${bid.bidContacts}</td>
        <td>${bid.bidHospital}</td>
        <td>${bid.bidQuantity}</td>
        <td>${bid.bidInfo}</td>
        <td>${bid.bidGroup}</td>
        <td>${bid.bidPrice}</td>
        <td>${bid.bidComments}</td>
      </tr>
    </table>
    <div>
      <p>Место для дополнительной информации</p>
    </div>
  </div>
</div>
</body>
</html>