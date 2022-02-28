<%--
  Created by IntelliJ IDEA.
  User: zhangmaomao
  Date: 2021/7/23
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">所有单词</h1>
<div align="center">
    <a href="/wordsSort?num=0" ><button >按首字母排序</button></a>
    <a href="/wordsSort?num=1" align="center"><button >按熟悉程度排序</button></a>
    <a href="/index.jsp" align="center"><button >返回首页</button></a>
</div>

<table border="1" align="center">
    <tr>
        <th>ID</th>
        <th>单词</th>
        <th>中文</th>
        <th>音标</th>
        <th>熟悉程度</th>
    </tr>
    <c:forEach items="${list}" var="words">
        <tr>
            <td>${words.id}</td>
            <td>${words.english}</td>
            <td>${words.chinese}</td>
            <td>${words.sent}</td>
            <td>${words.know}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
