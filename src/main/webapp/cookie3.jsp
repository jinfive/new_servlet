<%--
  Created by IntelliJ IDEA.
  User: jin-o
  Date: 2024. 12. 23.
  Time: 오전 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>해당 페이지는 광고를 포함하고 있읍니드아아다.</h1>
<%--쿠키는 서버에서 클라이언트인 브라우저에 보내는 문자 정보--%>
<%-- response객체를 활용함. 자바의 객체, 자바가 필요함--%>
<%
    // 자바가 들어가는 부분.
    //1. 쿠키 객체 생성(키 , 값쌍으로)
    Cookie cookie = new Cookie("adTracker","user1234");
    Cookie cookie2 = new Cookie("adCompany","shinsegae");
    Cookie cookie3 = new Cookie("count","5");
    Cookie cookie4 = new Cookie("pay","ok");
    //2. 쿠키의 유효기간 +  등을 설정
        cookie.setMaxAge(100000);
        cookie2.setMaxAge(1000);
        cookie3.setMaxAge(1000);
        cookie4.setMaxAge(1000);
    //3/ 쿠키를 브라우저에 정송
    //하나의 요청당 request,res객체가 톰킷의 서블릿 엔진에 의해 생성.
    response.addCookie(cookie);
    response.addCookie(cookie2);
    response.addCookie(cookie3);
    response.addCookie(cookie4);
%>
</body>
</html>
