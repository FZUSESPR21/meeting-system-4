<%@ page import="java.util.List" %>
<%@ page import="pojo.Forum" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<style type="text/css">
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
        width: 250px;
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

    #menu2 {
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
        width: 250px;
        height: 50px;
        font-size: 20px;
        cursor: pointer;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
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
        width: 1000px;
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
</style>
<html>

<body>
<div id="nav">
    <div id="h1">
        <p>个人行程</p>
    </div>
    <div id=menu>
        <a href="ForumServlet" id="list">会议议程</a> <br>
    </div>
    <div id=menu2>
        <a href="NotiServlet" id="list2">查看通知</a> <br>
    </div>
    <script>
        function jump()
        {
            window.open("/common/conflist.jsp")
        }
        function jump2()
        {
            window.open("/common/messagelist.jsp")
        }
    </script>
</div>
<div id="section">

    <form action="">

        <input type="text" name="key" value="查找">
        <input type="submit" value="搜索">
    </form>
    <p id="tabletitle">分论坛列表</p>
    <div id="conferencelist">

        <form action="" method="">
            <table>

                <tr>
                    <th>议程名称</th>
                    <th>秘书</th>
                    <th>主席</th>
                    <th>开始时间</th>
                    <th>主题</th>
                    <th>操作</th>
                </tr>
<%
             List<Forum> list =(List<Forum>) request.getAttribute("list");
                for(int i=0;i<list.size();i++)
                {
                    Forum forum=list.get(i);

    %>
                <tr name="papers" id="papers_id_1">
                    <td class="title"><%=forum.getName()%></td>
                    <td class="conference"><%=forum.getSecretary()%></td>
                    <td class="keyword"><%=forum.getSubChairman()%></td>
                    <td class="time"><%=forum.getTime()%></td>
                    <td class="topic"><%=forum.getTopic()%></td>
                    <!--
                    <td class="delete">
                      <a href="servlet/CollectionServlet?action=delete&id=" onclick="delcfm();">删除</a>
                    </td>
                    -->
                    <td><button>删除</button></td>
                </tr>
                <!--循环的结束-->
                <%
                    }
                %>

            </table>
        </form>
    </div>
</div>
        </body>
</html>