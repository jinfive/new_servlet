package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//value속성값이 url임
//name는 tomcat에 등록될 서블릿의 이름
//@WebServlet(name = "LoginController", value = "/login") //value는 url name은 톰킷에 등록할 이름
public class LoginServlet extends HttpServlet {
    //1요청 1함수

    //http의 method를 추출해서 get요청이 들어오면 doGet()호출
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("두개ㅅ");
        //http요청을 받고,http응답을 하는 역할
        //login?id=root&pw=1234 ==> 쿼리스트링
        //요청주소뒤?쿼리스트링 get방식 -->http헤더에 들어감.
        String id= req.getParameter("id");//=> root
        String pw= req.getParameter("pw");//=> 1234
        String result ="";
        if(id.equals("root") && pw.equals("1234")){
            result = "success";
        }else {
            result = "fail";
        }
        //응답
        resp.getWriter().println("login result >>" + result);
    }

}
