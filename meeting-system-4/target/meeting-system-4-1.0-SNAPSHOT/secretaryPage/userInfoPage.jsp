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

<div id="user_info">
    <%
        ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");
        for (User user:users) { %>
    <text id="user_name"><%=user.getName()%></text>
    <text id="user_forums">
        <% for (String forum:user.getForum()) { %>
        <%=forum + " "%>
        <% } %>
    </text>
    <%  }
    %>
</div>

</body>
</html>
