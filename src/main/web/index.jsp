<%--
  Created by IntelliJ IDEA.
  User: zhangmaomao
  Date: 2021/7/29
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>单词背诵系统</title>
</head>
<body>
       <h1 align="center">单词背诵系统</h1>
        <a href="/words"><h3 align="center">查看所有单词</h3></a>
       <h3 align="center">每日单词: <a href="/daywords?num=10">10个</a>,<a href="/daywords?num=20">20个</a></h3>
</body>
</html>
