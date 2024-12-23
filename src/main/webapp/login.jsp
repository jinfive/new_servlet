<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--action은 서버에서 받을주소 method생략시 get방식 서버에서는 action에서 적은 주소와 method 방법에 따라 처리 할 수 있는 함수 호출--%>
<form action="login" method="get">
    id 입력:<input name="id" value="root"><br>
    pw 입력:<input name="pw" value="1234"><br>

    <button type="submit">로그인</button>
</form>

</body>
</html>
