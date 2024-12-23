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
<%
    String item = request.getParameter("item");
    Cookie cartCookie = new Cookie("cart"+item,item);

    cartCookie.setMaxAge(5000);
    response.addCookie(cartCookie);//생성한 쿠키를 HTTP 응답에 추가
    out.println("<p>아이템 '" + item + "'이 장바구니에 추가되었습니다.</p><br>");
%>
<hr color="red">
<a href="viewCart.jsp">장바구니 보기</a>

</body>
</html>
