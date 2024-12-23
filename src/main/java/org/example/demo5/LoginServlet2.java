package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//value속성값이 url임
//name는 tomcat에 등록될 서블릿의 이름
@WebServlet(name = "second", value = "/second") //value는 url name은 톰킷에 등록할 이름
public class LoginServlet2 extends HttpServlet {
    //1요청 1함수

    //http의 method를 추출해서 get요청이 들어오면 doGet()호출
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("두개ㅅ");
        //get방식은 tomcat의 web.xml설정에 따라 결정됨
        //web.xlm에 utf-8로 설정함.

        String id= req.getParameter("id");//=> 나는 한글이란다
        String pw= req.getParameter("pw");//=> 1234
        System.out.println(id);
        System.out.println(pw);

        //응답을 보낼 때는 body로 보내줘서
        //body마다 encoding을 설정해줘야함.

        resp.setContentType("text/html;charset=utf-8");

        //응답
        resp.getWriter().println("login result >>" + id + "," + pw);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("두포스트");
        //post방식은 tomcat의 web.xml설정에 따라가지 않아
        //http 바디에 전달되서 받을때마다 한글로 인코딩 해줘야함.
        //파라메터 값을 추출하기 전에 한글 인코딩을 설정해줘야함.
        //받기전에 앞에다가 인코딩 처리를 하는 프로그램 (필터)
        //-> 한글 필터
        //파라메터를 받기전에 utf-8로 인코딩을 먼저 하겠다.
        req.setCharacterEncoding("UTF-8");

        String id= req.getParameter("id");//=> 나는 한글이란다
        String pw= req.getParameter("pw");//=> 1234
        System.out.println(id);
        System.out.println(pw);

        //응답을 보낼 때는 body로 보내줘서
        //body마다 encoding을 설정해줘야함.

        resp.setContentType("text/html;charset=utf-8");
        //문자열들을 http의 body로 넣어서 전송해주는 역할
        //PrintWriter 객체
        PrintWriter out = resp.getWriter();
        //응답y
        out.println("<html><body bgcolor=\"yellow\">");

        out.println("login result >>" + id + "," + pw);
        out.println("</bod></html>");
    }

}
