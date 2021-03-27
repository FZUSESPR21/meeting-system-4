<%--
  Created by IntelliJ IDEA.
  User: Lin Minghao
  Date: 2021/3/27
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=path%>/SubChairmanServlet" method="get" id="countForm">
    <input type="submit" value="查询关注本论坛人数">
</form>

<text>${requestScope.numOfFollowers}</text>

</body>
</html>
