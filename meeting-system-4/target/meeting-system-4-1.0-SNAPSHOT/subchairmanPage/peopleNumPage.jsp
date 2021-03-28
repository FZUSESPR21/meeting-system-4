<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>分论坛主席参会人数</title>
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
            width: 95%;
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
        #menu2{
            margin-left: 0;
            margin-right: 0;
            border-style: groove;
            border-color: #000000;
            text-align: center;
        }
        #menu3{
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
        #list3 {
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
        #number{
            font-size: 25px;
            width: 750px;
            float: right;
        }

        #section {
            width: 83%;
            height: 800px;
            float: right;
            padding: 5px;

        }
        #num{
            width: 20%;
            float: left;
            margin-left: 40px;
        }
        #num p{
            font-size: 25px;
        }



        #inform p{
            font-size: 30px;

            margin: auto;
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


        #peopletable {
            width: max-content;
            height: 40px;
            border-style: dotted dashed solid double;
            border-radius: 12px;
            background-color: #ffffff;
            margin-left: 20px;
            margin-top: 60px;
            background: rgba( 255, 255, 255, 0.5);
        }

        #peopletable th{
            width: 600px;
        }
        #num th{
            font-size: 25px;
        }
    </style>
</head>
<body>
<div id="nav">
    <div id="h1">
        <p>管理列表</p>
    </div>

    <div id="menu3">
        <button id="list3" >参会人数</button><br>
    </div>
    <div id="menu2">
        <a id="list2" href="<%=path%>/subchairmanPage/releaseNotesPage.jsp">发布通知</a><br>
    </div>
</div>
<div id="section">
    <div id="h2">
        <button id="enter">登录</button><br>
    </div>
    <div id="num">
        <div id="information">
            <p>参会人数</p>
        </div>
        <table  id="peopletable">

            <tr>
                <th>会议参会人数</th>
                <th>${requestScope.numOfFollowers}</th>
            </tr>

        </table>
        <form action="<%=path%>/SubChairmanServlet" method="get" id="queryForm">
            <input id="mem_submit" type="submit" value="查询人数">
        </form>
    </div>
</div>
</body>
</html>