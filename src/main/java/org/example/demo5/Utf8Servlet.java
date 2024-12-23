package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/utf8.do")
public class Utf8Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //받기전 한글처리
        //req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        //보내기전
        //resp.setContentType("text/html;charset=utf-8");
        resp.getWriter().print("<h1>" + name + "</h1>");
    }


}
