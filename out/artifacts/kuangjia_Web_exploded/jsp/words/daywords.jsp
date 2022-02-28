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
<h1 align="center">每日单词</h1>
<div align="center">
    <button onclick="show()">显示中文</button>
    <button  onclick="submit()">提交今日单词</button>
    <a href="/index.jsp" ><button >返回首页</button></a>
</div>
<table border="1" align="center">
    <tr>
        <th>ID</th>
        <th>单词</th>
        <th class="chinese" style="display: none">中文</th>
        <th>音标</th>
        <th>熟悉</th>
    </tr>
    <c:forEach items="${list}" var="daywords">
        <tr>
            <td class="tdId" data-id="${daywords.id}">${daywords.id}</td>
            <td>${daywords.english}</td>
            <td class="chinese" style="display: none">${daywords.chinese}</td>
            <td>${daywords.sent}</td>
            <td><input type="checkbox" value="1" name="熟悉"></td>
        </tr>
    </c:forEach>
</table>
<script src="/jsp/jq/jquery-2.0.0.min.js"></script>
<script type="text/javascript">
     temp=""
    function show(){
        $(".chinese").toggle()
    }
    function submit() {
        let ids = []
        $('input:checkbox[name= "熟悉"]:checked').each(function (i,item){
            ids.push($(item).parents("tr").find(".tdId").data("id"))
        })
        console.log(ids)
        temp=ids.join(",")
        var idJson={idss:temp}
        console.log(JSON.stringify(idJson))
       $.ajax({
           url:"http://localhost:8888/setdayword",
           type:"POST",
           data:idJson,
           dataType:"json",
           success:function (data){
               console.log(data)
           }
       })

            alert("提交成功")
    }

</script>
</body>
<style>

</style>
</html>
