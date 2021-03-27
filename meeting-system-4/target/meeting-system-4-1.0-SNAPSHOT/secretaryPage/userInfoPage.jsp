<%@ page import="pojo.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pojo.Forum" %><%--
  Created by IntelliJ IDEA.
  User: Lin Minghao
  Date: 2021/3/27
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=path%>/SecretaryServlet" method="get" id="queryForm">
    <input type="submit" value="查询本论坛所有人员信息">
</form>

<div>
    <c:forEach items="${requestScope.users}" var="u" varStatus="vs">
        <tr>
            <td class="username">${u.name}</td>
        </tr>
        <text class="username">${u.name}</text>
        <c:forEach items="${u.forum}" var="f">
            <text class="username">${f}</text>
        </c:forEach>
    </c:forEach>
</div>

</body>
</html>
