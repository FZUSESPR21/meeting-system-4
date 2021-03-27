<%--
  Created by IntelliJ IDEA.
  User: Lin Minghao
  Date: 2021/3/27
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <title>登录界面</title>
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
        <img src="signin.png" />
    </div>
</div>

<div id="section">
    <div id="conferencelist">
        <table id="table">
            <div id="word">
                <p>密码登录</p>
            </div>
            <tr>
                <td>
                    <div>
                        <form method="post" id="form1" action="<%=path%>/LoginServlet">
                            <input type="radio" name="type" value="user" checked>普通参会者
                            <input type="radio" name="type" value="secretary">秘书<br>
                            <input type="radio" name="type" value="subchairman">分论坛主席
                            <input type="radio" name="type" value="chairman">主席<br>


                                    <input type="text" id="id" name="id" value="${id}" placeholder="请输入用户名"><br>
                                    <input type="password" id="password" name="password" value="${password}" placeholder="请输入密码">
                                    <button type="button" name="Button"> 忘记密码 </button><br>
                                    <button type="button" name="loginButton" onclick="login();" > 登录 </button>

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

<script>
    function login() {
        var username = document.getElementById("id").value;
        var password = document.getElementById("password").value;
        if (username == '') {
            alert("用户名不能为空！请您输入");
            return;
        }
        if (password == '') {
            alert("密码不能为空！请您输入");
            return;
        }
        document.getElementById("form1").submit();

    }
</script>