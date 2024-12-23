<%--
  Created by IntelliJ IDEA.
  User: jin-o
  Date: 2024. 12. 23.
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>장바구니</h1>

<%
    Cookie[] cookies = request.getCookies();
    for(Cookie cookie : cookies) {
        out.println(cookie.getValue()+"<br/>");
    }
%>
<a href="addCart.jsp">아이템추가</a>

</body>
</html>
