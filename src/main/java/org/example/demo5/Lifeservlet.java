package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Life", value = "/life")
public class Lifeservlet extends HttpServlet {
    //생성자 하나도 안쓰면 기본 생성자 만들어짐.
    //서블릿릿은 최초 호출시에 객체가 생성되어 메모리에 준비됨
    //lazy로딩


    public Lifeservlet() {
        System.out.println("객체 생성됨");
    }

    @Override
    public void destroy() {
        System.out.println("서블릿 소멸");
        //db연결 객체등의 자원 해제
        //서블릿 종료 되었을시 언제,무슨이유로.... 기록

    }

    @Override
    public void init() throws ServletException {
        System.out.println("서블릿 초기화");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("get요청옴");
        System.out.println("sevvice() 에서 method 판단 do get");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("post요청옴");
        System.out.println("sevice() 에서 method 판단 dopost");
    }
}
