<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>DonorDP</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4"><h3><a href="<c:url value="/bids"/>">Заявки</a></h3></div>
            <div class="col-md-4"><h1 class="text-center">DonorDP</h1></div>
            <div class="col-md-4"><h3 class="text-right"><a href="<c:url value="/welcome"/>" target="_blank">Вход/Регистрация</a></h3></div>
        </div>
    </div>
</body>
</html>