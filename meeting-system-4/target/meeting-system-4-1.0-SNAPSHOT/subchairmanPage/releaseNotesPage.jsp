<%--
  Created by IntelliJ IDEA.
  User: Lin Minghao
  Date: 2021/3/27
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=path%>/SubChairmanServlet" id="noticeForm" method="post">
    <input type="text" name="notification" id="notice" placeholder="请输入要发布的通知">
    <input type="submit" id="submit" value="发布通知">
</form>

</body>
</html>
