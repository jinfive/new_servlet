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
<h1><p style="background: yellow">추가할 아이템을 입력하세요</p></h1>

<h2>단,동일한 물건을 장바구니에 넣을수 없음</h2>
<h2>(영문입력 가능,띄어쓰기 없음)</h2>

<a href="addCart.jsp">장바구니 보기</a>
<form action="addCart.jsp" method="post">
    <br>
    <input type="text" name="item" placeholder="아이템 입력">
    <button>장바구니 추가</button>
</form>

</body>
</html>
