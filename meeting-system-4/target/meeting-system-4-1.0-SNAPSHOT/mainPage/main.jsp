<%@ page import="pojo.Forum" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: fjf
  Date: 2021/3/27
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
</head>
<body>
<table align="center" border="0" width="85%">
    <thead>
    <tr bgcolor="#6699FF" width="30">
        <th>标题</th>
        <th>秘书</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Forum> forums = (List<Forum>) request.getAttribute("forums");
        if (forums==null){
            out.println("11321");
        }

        for(int i = 0; i < forums.size();i++)
        {
            Forum forum = (Forum)forums.get(i);
    %>
    <tr>
        <td><%=110%></td>
        <td><%=forums.size()%></td>
        <td><%=forum.getName() %></td>
        <td><%=forum.getSecretary() %></td>
    </tr>
    <%
        }
    %>
    </td>
    </tr>
    </tbody>
</table>
</body>
</html>
