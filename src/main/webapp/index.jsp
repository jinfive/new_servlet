<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="state.jsp">상태정보페이지로 이동</a>
<a href="Input.jsp">한글필터 연습</a>

<hr color="blue">
<a href="login.jsp">로그인페이지로</a>
<a href="number.jsp">숫자계산 페이지로</a>
<a href="life">생명주기 페이지로</a>
<a href="login2.jsp">한글로그인페이지로</a>
<hr color="red">
<a href="hello-servlet">Hello Servlet</a>
<a href="hello-servlet2">Hello Servlet2</a>
<%--일반적인 get 요청--%>
<a href="controller">컨트롤러호출</a>
<a href="mcontroller">맴버컨트롤러호출</a>
<hr>
<form action="controller" method="post">
    id 입력:<input name="user" value="root"><br>
    <button type="submit">서버로 id전송</button>

</form>

<hr>
<form action="mcontroller" method="get">
    id 입력:<input name="id" value="root"><br>
    pw 입력:<input name="pw" value="1234"><br>
    name 입력:<input name="name" value="kjo"><br>
    tel 입력:<input name="tel" value="010-123-123"><br>
    <button type="submit">서버로 id전송</button>

</form >
<hr color="red">

    <h1>Web01</h1>
    <a href="city">city</a>
<hr color="red">
<form action="city2" method="get">
    city name 입력:<input name="cityname" value="root"><br>
    city population 입력:<input name="cityp" value="1234"><br>
    <button type="submit">submit</button>
</form>

<script>
    function btnClick() {
        let gameName = document.getElementsByName("gamename")[0].value;
        let gameType = document.getElementsByName("gametype")[0].value;
        location.href = "game?gameName=" + encodeURIComponent(gameName) + "&gameType=" + encodeURIComponent(gameType);
    }
</script>
<hr>
<br>
<h1>Game Form</h1>

game name 입력:<input name="gamename" value="smileGame"><br>
game type 입력:<input name="gametype" value="multi role"><br>
<button onclick="btnClick()">자바 스크립트로 GET요청</button>



<hr color="blue">
<form action="player" method="post">
    playername 입력:<input name="playername" value="king"><br>
    playertype 입력:<input name="playerscore" value="300"><br>
    <button type="submit">submitPost</button>
</form>



</body>
</html>