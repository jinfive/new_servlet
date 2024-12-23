package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PlayerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String playerName = req.getParameter("playername");
        String playerScore = req.getParameter("playerscore");

        System.out.println("PlayerServlet doPost 처리됨.");
        System.out.println("Player Name: " + playerName);
        System.out.println("Player Score: " + playerScore);

        resp.getWriter().println(playerName);
        resp.getWriter().println(playerScore);
    }
}
