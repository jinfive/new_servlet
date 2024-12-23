package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/game")
public class GameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gameName = req.getParameter("gameName");
        String gameType = req.getParameter("gameType");

        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().append("<h1>GET request received in GameServlet</h1>")
                .append("<p>Game Name: ").append(gameName).append("</p>")
                .append("<p>Game Type: ").append(gameType).append("</p>");
        System.out.println("GameServlet doGet 처리됨.");
        System.out.println("Game Name: " + gameName);
        System.out.println("Game Type: " + gameType);
    }
}

