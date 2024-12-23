<%--
  Created by IntelliJ IDEA.
  User: jin-o
  Date: 2024. 12. 23.
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //세션을 가지고 와보자
    //로그인 성공이면 loginId를 세션에 저장할 예정
    //로그인 했을때 화면과 로그인 안했을때 화면이 다르다
    //--> 세션에 저장된 loginId 가 있는지 없는지 판단.
    String loginId = (String) session.getAttribute("loginId");
    //꺼내올떄는 원하는 타입으로 꺼내야한다
    //출력해 보자
    if(loginId == null){//로그인이 안되있다라고 판단
        out.println("로그인 되어있지 않음.");
    }else {//로그인이 되었다 판단
        out.println("로그인 되어있음. 아이디는 " + loginId );
        out.println("<a href='logout.do'>로그아웃</a>");
    }

%>

</body>
</html>
