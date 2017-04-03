<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Заявки</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Назад в меню</a>

<br/>
<br/>

<h1>Все заявки</h1>

<c:if test="${!empty listBids}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Ф.И.О.</th>
            <th width="120">Больница</th>
            <th width="120">Контакты</th>
            <th width="120">Количество</th>
            <th width="120">Информация</th>
            <th width="120">Группа</th>
            <th width="120">Оплата</th>
            <th width="120">Комментарии</th>
            <th width="120">Редактировать</th>
            <th width="60">Удалить</th>
        </tr>
        <c:forEach items="${listBids}" var="bid">
            <tr>
                <td>${bid.id}</td>
                <td><a href="/biddetails/${bid.id}" target="_blank">${bid.bidUserName}</a></td>
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


<h1>Добавить заявку</h1>

<c:url var="addAction" value="/bids/add"/>

<form:form action="${addAction}" commandName="bid">
    <table>
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
                <form:input path="bidUserName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidHospital">
                    <spring:message text="Больница"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidHospital"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidContacts">
                    <spring:message text="Контакты"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidContacts"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidQuantity">
                    <spring:message text="Количество"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidQuantity"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidInfo">
                    <spring:message text="Актуальная Информация"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidInfo"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidGroup">
                    <spring:message text="Группа Крови"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidGroup"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidPrice">
                    <spring:message text="Цена"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidPrice"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bidComments">
                    <spring:message text="Комментарии"/>
                </form:label>
            </td>
            <td>
                <form:input path="bidComments"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty bid.bidUserName}">
                    <input type="submit"
                           value="<spring:message text="Редактировать"/>"/>
                </c:if>
                <c:if test="${empty bid.bidUserName}">
                    <input type="submit"
                           value="<spring:message text="Добавить"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
