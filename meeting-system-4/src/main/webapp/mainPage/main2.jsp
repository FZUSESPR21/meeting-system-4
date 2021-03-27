<%@ page import="pojo.Forum" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: fjf
  Date: 2021/3/27
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>分论坛列表</title>
    <link rel="stylesheet" href="../css/list.css">
</head>
<style type="text/css">
    body {
        background-color: rgb(217, 219, 224);
        border: none;
        margin: 0;
    }

    h1 {
        color: #eeeeee;
    }

    #h1 {
        width: 200px;
        height: 60px;
        margin: 0 auto;
        background-color: #272a38;
    }

    #h2 {
        width: 1000px;
        height: 60px;
    }



    #nav {
        text-align: center;
        line-height: 30px;
        width: 18%;
        height: 800px;
        float: left;
        padding: 5px;
        font-size: 25px;
        border-style: dotted solid;
        color: white;
        border-width: 0 1px 0 0;
        background-color: rgb(42, 44, 49);
    }

    #menu {
        margin-left: 0;
        margin-right: 0;
        border-style: groove;
        border-color: #000000;
        text-align: center;
    }

    #list {
        text-align: left;
        color: #eeeeee;
        border: 0;
        background-color: transparent;
        width: 200px;
        height: 50px;
        font-size: 20px;
        cursor: pointer;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
    }
    #top-bar{
        float: left;
    }
    .search{
        float: left;
    ;
    }
    #enter {
        float: left;
        width: 75px;
        color: #353b5e;
        padding: 12px 18px;
        border-style: solid;
        border-width: 2px;
        border-color: #353b5e;
        border-radius: 8px;
        margin-left: 10px;
        margin-top: 5px;
    }
    #searchBtn{
        width: 75px;
        background-color: #353b5e;
        color: white;
        padding: 12px 20px;
        border-radius: 8px;
        margin-left: 90px;
        margin-top: 5px;
    }
    #searchInput{
        width: 700px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #828080;
        border-radius: 12px;
        box-sizing: border-box;
        background-color: #e0e0e0;
        margin-left: 40px;
    }
    #line{
        height: 0px;
        width: 80.8%;
        border: black 1px solid;
        float: left;
    }
    h2{
        float: left;
        overflow: hidden;
        margin-left: 60px;
        width: 500px;
    }
    #schedule{
        width: 70%;
        height: 600px;
        margin: 10px;
        margin-left: 60px;
        border: #272a38 4px solid;
        box-shadow: 5px 5px #353b5e;
        border-radius: 30px;
        float: left;
    }
    ul{
        margin-top: 80px;
    }
    .li{
        list-style-type: none;
        border: #353b5e 1px solid;
        border-radius: 5px;
        margin-left: 50px;
        width: 93%;
        height: 50px;
        margin-top: 30px;
        line-height: 50px;

    }
    .item{
        border-radius: 5px;
        border: #353b5e 1px solid;
        float: left;
        width: 80px;
        height: 30px;
        margin-left: 90px;
        margin-top: 20px;
        margin-bottom: 10px;
        text-align: center;
        font: bold;
    }
    .contain{
        margin-left: 90px;
        float: left;
        padding-left: 10px;
    }
    #contain1{
        float: left;
        padding-left: 10px;
    }
    .contain2{
        margin-left: 70px;
        float: left;
        padding-left: 10px;
    }
    .contain3{
        margin-left: 130px;
        float: left;
        padding-left: 10px;
    }
    a{
        text-decoration-line: none;
        color: black;
    }
</style>
<body>
<!--左侧边栏-->
<div id="nav">
    <div id="h1">
        <p>管理列表</p>
    </div>
    <div id="menu">

        <button id="list"><a href="AllForumServlet">会议议程</a></button><br>
    </div>
    <div id="menu">
        <button id="list"><a href="ListServlet">分论坛信息</a></button><br>
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
<h2>分论坛列表</h2>
<!--议程主体-->
<div id="schedule">
    <div class="item">分论坛</div>
    <div class="item">主题</div>
    <div class="item">时间</div>
    <div class="item">分主席</div>
    <div class="item">秘书</div>
    <ul>
        <!--                <li class="li">dslfdalkfhlk</li>-->
        <!--                <li class="li">dslfdalkfhlk</li>-->
        <%
            List<Forum> forums = (List<Forum>) request.getAttribute("forums");

            for(int i = 0; i < forums.size();i++)
            {
                Forum forum = (Forum)forums.get(i);
        %>
        <li class="li">
            <div id="contain1"><%=forum.getName() %></div>
            <div class="contain"><%=forum.getTopic() %></div>
            <div class="contain2"><%=forum.getTime() %></div>
            <div class="contain2"><%=forum.getSubChairman()%></div>
            <div class="contain3"><%=forum.getSecretary() %></div>
        </li>
        <%
            }
        %>
    </ul>
</div>
</body>
</html>
