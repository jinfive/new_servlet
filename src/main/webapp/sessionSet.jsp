<%--
  Created by IntelliJ IDEA.
  User: jin-o
  Date: 2024. 12. 23.
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //로그인 되었다 치고 세션을 잡아보자
    //값을 저장해 보자.(Id ,username,vo등)
    //세션의 값은 모든 타입 다됨.들어갈때 Object으로 자동 형변환 되서 들어감.
    String id=request.getParameter("id");
    String pw=request.getParameter("pw");
    //id = root ,pw = 1234 이면 로그인 성공했습니다 출력,
    //세션은 loginId로 설정
    if(id.equals("root") && pw.equals("1234")){
        out.println("로그인 성공했습니다.");
        session.setAttribute("loginId",id);
    }

%>
    <a href="sessionGet.jsp">로그인 성공후 페이지로</a>

</body>
</html>
