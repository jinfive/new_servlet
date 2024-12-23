<%@ page import="java.io.PrintWriter" %><%--
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
<h1>쿠키 정보 ㅅ가지고 오기</h1>
<%--웹프로그램은 출력틀이 html이여야함--%>
<%--웹 프로그램의 출력용 틀로 j2ee프로젝트에서는 jsp를사용중--%>
<%--템플릿(틀) 엔진:jsp --- 타임리프 --%>
<%
    //스크립트스트릿(끄적끄적 쓰는 조그마한 프로그램,조각 프로그램)
    //jsp -- servlet전환
    //init() 초기화 -- service -- doGet ,doPost 요청 --> destory()종료
    //service()안으로 다 구현되어서 들어감. 여기서 만들어 지는 변수는 지역변수 * 반드시 초기화*

    //1.브라우저에 있는 쿠키 목록을 가지고 오자. Cookie[]
    Cookie[] cookies = request.getCookies();
    //2. 배열에서 하나씩 꺼내서 조건에 맞는것만 써보자~. 쿠키의 구성요소 키,값 쌍으로 구성
    for(Cookie cookie :cookies){
        //PrintWriter out =response.getWriter(); >> 내장객체
        if(!cookie.getName().equals("null") && !cookie.getName().equals("JSESSIONID")) {
            out.println(cookie.getName() + " " + cookie.getValue() + "<br/>");
        }
    }
    // 키(이름),값 쌍으로 되어있음.
%>
</body>
</html>
