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
    <title>秘书人员信息</title>
    <style>
        body {
            background-color: rgb(217, 219, 224);
        }

        h1 {
            color: #eeeeee;
        }

        #h1 {
            width: 250px;
            height: 60px;
            margin: 0 auto;
            background-color: #272a38;
        }

        #h2 {
            width: 1000px;
            height: 60px;
        }

        #enter {
            float: right;
            width: 75px;
            color: #353b5e;
            padding: 12px 18px;
            border-style: solid;
            border-width: 2px;
            border-color: #353b5e;
            border-radius: 8px;
        }

        #nav {
            text-align: center;
            line-height: 30px;
            width: 15%;
            height: 800px;
            float: left;
            padding: 5px;
            font-size: 25px;
            border-style: dotted solid;
            color: white;
            border-width: 0 1px 0 0;
            background-color: rgb(42, 44, 49);
        }

        #menu1 {
            margin-left: 0;
            margin-right: 0;
            border-style: groove;
            border-color: #000000;
            text-align: center;
        }

        #list1 {
            text-align: left;
            color: #eeeeee;
            border: 0;
            background-color: transparent;
            width: 250px;
            height: 50px;
            font-size: 20px;
            cursor: pointer;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        #menu2 {
            margin-left: 0;
            margin-right: 0;
            border-style: groove;
            border-color: #000000;
            text-align: center;
        }

        #list2 {
            text-align: left;
            color: #eeeeee;
            border: 0;
            background-color: transparent;
            width: 250px;
            height: 50px;
            font-size: 20px;
            cursor: pointer;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        #section {
            width: 83%;
            float: left;
            padding: 10px;
        }

        input[type=text],
        select {
            width: 800px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 12px;
            box-sizing: border-box;
            background-color: #e0e0e0;
            margin-left: 100px;
        }

        input[type=submit] {
            float: right;
            width: 75px;
            background-color: #353b5e;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 8px;
        }

        #conferencelist {
            color: black;
            background: rgba( 255, 255, 255, 0.5);
            margin-top: 50px;
            text-align: center;
            margin: 0 auto;
            width: 80%
        }

        #table {
            width: max-content;
            height: 60px;
            border-style: dotted dashed solid double;
            border-radius: 12px;
            background-color: #ffffff;
            margin-left: 20px;
            margin-top: 60px;
            background: rgba( 255, 255, 255, 0.5);
        }

        #tabletitle {
            background-color: transparent;
            font-size: 20px;
            color: black;
            margin-left: 100px;
        }

        #conferencelist table {
            margin-top: 50px;
            width: 100%;
            line-height: 24px;
            border-top: 2px solid #333333;
            border-bottom: 2px solid #2c2c2c;
        }

        #conferencelist table th {
            background: #aaaaaa;
            color: black;
        }

        #conferencelist table td {
            padding: 10px 0;
            border-top: 1px solid #464646;
        }

        #conferencelist table td.title {
            border: 1px solid #dfdfe0;
            margin: 0 10px;
            vertical-align: middle;
        }

        #conferencelist table td.conference {
            text-align: center;
            width: 100px;
            border-left: 1px solid #e1e1e1;
        }

        #conferencelist table td.keyword {
            color: black;
            font-weight: bold;
        }

        #conferencerlist table td.time {
            width: 100px;
            text-align: center;
            border-left: 1px solid #e1e1e1;
        }
        #mem_submit{
            float: right;
            position: relative;
            right: 200px;
            top: 70px;
            width: 200px;
            height: 45px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="nav">
    <div id="h1">
        <p>管理列表</p>
    </div>
    <div id="menu1">

        <button id="list1">参会者信息</button><br>
    </div>
    <div id="menu2">
        <a id="list2" href="secretaryPage/releaseNotesPage.jsp">发布通知</a><br>
    </div>
    <script>
        function jump1(){
            window.open("releaseNotesPage.jsp",'_self','',true)
        }
    </script>
</div>

<form action="<%=path%>/SecretaryServlet" method="get" id="queryForm">
    <input id="mem_submit" type="submit" value="查询本论坛所有人员信息">
</form>

<div id="section">
    <div id="information">
        <p id="tabletitle">人员信息列表</p>
    </div>

    <div id="conferencelist">


        <c:forEach items="${requestScope.users}" var="u" varStatus="vs">
            <div class="username">${u.name}</div>
            <div class="userforun">
                <c:forEach items="${u.forum}" var="f">
                    ${f}
                </c:forEach>
            </div>
            <br/>
        </c:forEach>
        <!--循环的结束-->




    </div>
</div>


</body>
</html>
