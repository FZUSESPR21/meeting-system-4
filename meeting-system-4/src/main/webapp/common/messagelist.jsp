<%@ page import="pojo.Notification" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" import="java.util.*" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

</head>
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
        background-color: transparent;
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

    #messagelist {
        color: black;
        background: rgba( 255, 255, 255, 0.5);
        margin-top: 50px;
        text-align: center;
        margin: 0 auto;
        width: 80%;
        background-color: transparent;
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

    #table {
        width: 760px;
        height: 60px;
        border-style: dotted dashed solid double;
        border-radius: 12px;
        background-color: transparent;
        margin-top: 30px;
        background: rgba( 255, 255, 255, 0.5);
    }

    div dl {
        color: rgb(16, 46, 16);
        margin: px;
        border-style: dotted dashed solid double;
        border-radius: 12px;
        background: rgba( 255, 255, 255, );
    }

    div dd {
        background-color: #ffffff;
        color: rgb(16, 46, 16);
        margin-left: 20px;
        width: fit-content;
        border-radius: 12px;
    }

    div dd.message_title {
        color: rgb(2, 6, 231);
        font-size: 20px;
    }
</style>
<body>
    <div id="nav">
        <div id="h1">
            <p>????????????</p>
        </div>
        <div id="menu">

            <a href="ForumServlet" id="list">????????????</a> <br>
        </div>
        <div id="menu1">
            <a href="NotiServlet" id="list1">????????????</a> <br>
        </div>
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
    <div id="section">

        <form action="">

            <input type="text" name="key" value="??????">
            <input type="submit" value="??????">
        </form>
        <p id="tabletitle">????????????</p>
        <div id="messagelist">
            <table id="table">
                <%
                    List<Notification> list =(List<Notification>) request.getAttribute("list");
                    for(int i=0;i<list.size();i++)
                    {
                        Notification notification=list.get(i);
                %>
                <tr>
                    <td>
                        <div>
                            <dl>
                                <dt>
                                
                                </dt>
                                <dd class="massage_title">???????????????"<%=notification.getSubForum()%>"??????"</dd>
                                <dd class="message_details"><%=notification.getMessage()%></dd>
                            </dl>
                        </div>


                    </td>
                </tr>
                <%
                    }
                %>
            </table>

        </div>
    </div>
    </div>
</body>

</html>