<%@ page import="pojo.Forum" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: fjf
  Date: 2021/3/27
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">

    body {
        background-color: rgb(240, 235, 235);
    }

    #header1 {
        height: 20px;
    }

    #header2 {
        height: 80px;
    }

    #enter {
        float: right;
        width: 75px;
        color: #3b8a4c;
        padding: 10px 16px;
        border-style: solid;
        border-width: 2px;
        border-color: #3b8a4c;
        border-radius: 8px;
        margin-right: 130px;
    }

    #register {
        float: right;
        width: 75px;
        background-color: #3b8a4c;
        color: white;
        padding: 12px 18px;
        border: none;
        border-radius: 8px;
        margin-right: 10px;
    }

    #left {
        width: 10%;
        height: 600px;
        float: left;
    }

    #nav {
        width: 40%;
        float: left;
        padding: 10px;
    }

    .nav h1 {
        height: 300px
    }

    .imgpng img {
        top: 500px;
        left: 500px;
        position: absolute;
        background-image: url(signin.png);
        background-repeat: no-repeat;
        background-attachment: scroll;
        background-position: center;
    }

    #section {
        width: 40%;
        float: left;
        padding: 10px;
    }

    #conferencelist {
        color: black;
        background: rgba( 255, 255, 255, 0.5);
        margin-top: 200px;
        text-align: center;
        margin: 0 auto;
        width: 80%;
        border-radius: 10px;
        height: 340px;
    }

    #word {
        color: black;
        font-size: 20px;
        margin-top: 40px;
    }

    input[type=text],
    select {
        width: 300px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 12px;
        box-sizing: border-box;
        background-color: #e0e0e0;
        margin-left: 100px;
        margin-top: 20px;
    }

    input[type=submit] {
        float: right;
        width: 300px;
        background-color: #4e915d;
        color: white;
        padding: 12px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 8px;
        margin-top: 30px;
        margin-bottom: 20px;
        margin-left: 100px;
    }

    input[type=password],
    select {
        width: 300px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 12px;
        box-sizing: border-box;
        background-color: #e0e0e0;
        margin-left: 100px;
    }

</style>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/signin.css">
</head>

<body>
<div id="header1">
    <button type="button" id="enter">登录</button>
    <button type="button" id="register">注册</button>
</div>
<div id="header2">
</div>
<div id="left">

</div>
<div id="nav">
    <h1>

    </h1>
    <div class="imppng">
        <img src="img/signin.png" />
    </div>
</div>
<div id="section">

    <div id="conferencelist">
        <table id="table">
            <div id="word">
                <p>账号注册</p>
            </div>
            <tr>
                <td>
                    <div>
                        <form action="RegisterServlet" method="post">
                            <input type="text" id="id" name="id" value="请输入账号"><br>
                            <input type="password" id="password" name="password" value="请输入密码"><br>
                            <%
                                List<Forum> forums = (List<Forum>) request.getAttribute("forums");

                                for(int i = 0; i < forums.size();i++)
                                {
                                    Forum forum = (Forum)forums.get(i);
                            %>
                            <input type="checkbox" name="type<%=i%>" value="<%=forum.getName()%>">    <%=forum.getName()%>
                            <%
                                }
                            %>
                            <input type="submit" value="注册" onload="register()">
                        </form>
                    </div>
                </td>
            </tr>
        </table>



        </form>
    </div>
</div>
</div>
</body>
</html>
    <%
    String log = (String)request.getAttribute("log");
    %>
<script>
    function register() {
        alert(<%=log%>);
        console.log(<%=log%>)
    }
</script>