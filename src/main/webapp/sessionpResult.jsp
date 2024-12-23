<%--
  Created by IntelliJ IDEA.
  User: jin-o
  Date: 2024. 12. 23.
  Time: 오후 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  if(session.getAttribute("check")!= null){//세션이 설정이 됨
    out.println("<h1>현재 check상태는 ok</h1>");
  }else{//세션이 설정x
    out.println("check <input type='checkbox'>");
  }

%>
</body>
</html>
