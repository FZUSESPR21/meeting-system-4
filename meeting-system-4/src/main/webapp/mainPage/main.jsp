<%@ page import="pojo.Forum" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: fjf
  Date: 2021/3/27
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>会议议程</title>
    <link rel="stylesheet" href="css/schedule.css">
</head>
<body>
<!--左侧边栏-->
<div id="nav">
    <div id="h1">
        <p>会议网站</p>
    </div>
    <div id="menu">

        <button id="list">会议议程</button><br>
    </div>
    <div id="menu">
        <button id="list">分论坛信息</button><br>
    </div>
</div>
<!--右侧主页-->
<!--上边栏-->
<form id="top-bar">
    <input type="text" name="key" value="查找" class="search" id="searchInput">
    <input type="submit" value="搜索" class="search" id="searchBtn">
    <button id="enter">登录</button><br>
</form>
<div id="line"></div>
<h2>会议议程</h2>
<!--议程主体-->
<div id="schedule">
    <div class="item">分论坛</div>
    <div class="item">主题</div>
    <div class="item">时间</div>

    <ul>

        <%
            List<Forum> forums = (List<Forum>) request.getAttribute("forums");

            for(int i = 0; i < forums.size();i++)
            {
                Forum forum = (Forum)forums.get(i);
        %>
        <li class="li">
            <div id="contain1"><%=forum.getName() %></div>
            <div class="contain"><%=forum.getTopic() %></div>
            <div class="contain"><%=forum.getTime() %></div>
         </li>
<%--        <td></td>--%>
<%--        <td></td>--%>
<%--        <td><%=forum.getSecretary() %></td>--%>

        <%
            }
        %>
    </ul>
</div>
</body>
</html>
