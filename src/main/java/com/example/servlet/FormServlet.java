package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class FormServlet extends HttpServlet {
    private Map<String, Integer> ques1Stats = new HashMap<>();
    private Map<String, Integer> ques2Stats = new HashMap<>();
    private Map<String, Integer> ques3Stats = new HashMap<>();
    @Override
    public void init() throws ServletException {
        super.init();
        ques1Stats.put("option1", 0);
        ques1Stats.put("option2", 0);
        ques2Stats.put("option1", 0);
        ques2Stats.put("option2", 0);
        ques3Stats.put("option1", 0);
        ques3Stats.put("option2", 0);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String question1 = req.getParameter("question1");
        String question2 = req.getParameter("question2");
        String question3 = req.getParameter("question3");
        ques1Stats.put(question1, ques1Stats.get(question1) + 1);
        ques2Stats.put(question2, ques2Stats.get(question2) + 1);
        ques3Stats.put(question3, ques3Stats.get(question3) + 1);

        HttpSession session = req.getSession();
        session.setAttribute("question1Stats", ques1Stats);
        session.setAttribute("question2Stats", ques2Stats);
        session.setAttribute("question3Stats", ques3Stats);
        resp.sendRedirect("stat.jsp");
    }
}
