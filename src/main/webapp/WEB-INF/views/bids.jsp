<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Заявки</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4"><h3><a href="../../index.jsp">Назад в меню</a></h3></div>
        <div class="col-md-4"><h1 class="text-center">DonorDP</h1></div>
        <div class="col-md-4"><h3 class="text-right"><a href="<c:url value="/welcome"/>" target="_blank">Вход/Регистрация</a></h3></div>
    </div>
    <div class="row">
        <h2>Все заявки</h2>

        <c:if test="${!empty listBids}">

            <table class="table table-bordered table-hover">
                <thead>
                    <tr class="bg-success">
                        <th>ID</th>
                        <th>Ф.И.О.</th>
                        <th>Больница</th>
                        <th>Контакты</th>
                        <th>Количество</th>
                        <th>Информация</th>
                        <th>Группа</th>
                        <th>Оплата</th>
                        <th>Комментарии</th>
                        <th>Редактировать</th>
                        <th>Удалить</th>
                    </tr>
                </thead>
                <c:forEach items="${listBids}" var="bid">
                    <tr class="bg-warning">
                        <td>${bid.id}</td>
                        <td><a href="/biddetails/${bid.id}">${bid.bidUserName}</a></td>
                        <td>${bid.bidContacts}</td>
                        <td>${bid.bidHospital}</td>
                        <td>${bid.bidQuantity}</td>
                        <td>${bid.bidInfo}</td>
                        <td>${bid.bidGroup}</td>
                        <td>${bid.bidPrice}</td>
                        <td>${bid.bidComments}</td>
                        <td><a href="<c:url value='/edit/${bid.id}'/>">Редактировать</a></td>
                        <td><a href="<c:url value='/remove/${bid.id}'/>">Удалить</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>


<h2>Добавить заявку</h2>

<c:url var="addAction" value="/bids/add"/>

<form:form action="${addAction}" commandName="bid">
    <table  class="table table-bordered table-hover">
        <c:if test="${!empty bid.bidUserName}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="bidUserName">
                    <spring:message text="Ф.И.О."/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidUserName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidHospital">
                    <spring:message text="Больница"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidHospital"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidContacts">
                    <spring:message text="Контакты"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidContacts"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidQuantity">
                    <spring:message text="Количество"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidQuantity"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidInfo">
                    <spring:message text="Актуальная информация"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidInfo"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidGroup">
                    <spring:message text="Группа крови"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidGroup"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidPrice">
                    <spring:message text="Цена"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidPrice"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidComments">
                    <spring:message text="Комментарии"/>
                </form:label>
            </td>
            <td>
                <form:input type="text" class="form-control" path="bidComments"/>
            </td>
        </tr>
        <tr>
            <td>
                <c:if test="${!empty bid.bidUserName}">
                    <input type="submit" class="btn btn-danger
                           value="<spring:message text="Редактировать"/>"/>
                </c:if>
                <c:if test="${empty bid.bidUserName}">
                    <input type="submit" class="btn btn-primary
                           value="<spring:message text="Добавить"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
    </div>
</div>
</body>
</html>
