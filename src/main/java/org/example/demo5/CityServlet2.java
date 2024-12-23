package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CityServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("servlet run");
        //http요청을 받고,http응답을 하는 역할
        //login?id=root&pw=1234 ==> 쿼리스트링
        //요청주소뒤?쿼리스트링 get방식 -->http헤더에 들어감.
        String id= req.getParameter("cityname");//=> root
        String pw= req.getParameter("cityp");//=> 1234
        String result ="";

        //응답
        resp.getWriter().println("Cityname >>" + id);
        resp.getWriter().println("City p >>" + pw);
    }

}
