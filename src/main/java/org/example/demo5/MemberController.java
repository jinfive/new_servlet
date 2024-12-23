package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "memberController", value = "/mcontroller")
public class MemberController extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Get request");
        //http와 body에 넣어서 보내줌
        //1. 클라가 전송한 데이터를 받아 (req)
        //서버가 전달받은 데이터 타입은 무조건 String
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");
        String name = req.getParameter("name");
        String tel = req.getParameter("tel");
        System.out.println(id + " " + pw + " " + name + " " + tel);
        //2.서버거 전손받은 데이터를 클라에게 확인 가능케 전송하자
        resp.getWriter().println(id + " " + pw + " " + name + " " + tel);
    }
}
