package org.example.demo5;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

//@WebFilter("/*")
public class Utf8Filter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("필터 초기화");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        //필터내용
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        filterChain.doFilter(req, resp);


    }

    @Override
    public void destroy() {
        //팔터 사라짐
    }
}
