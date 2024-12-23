<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--action은 서버에서 받을주소 method생략시 get방식 서버에서는 action에서 적은 주소와 method 방법에 따라 처리 할 수 있는 함수 호출--%>
<a href="second?id=나는한글이야&pw=1234">get요청</a>
<form action="second" method="post">
    id 입력:<input name="id" value="나는한글이야"><br>
    pw 입력:<input name="pw" value="1234"><br>

    <button type="submit">post요청</button>
</form>

</body>
</html>
