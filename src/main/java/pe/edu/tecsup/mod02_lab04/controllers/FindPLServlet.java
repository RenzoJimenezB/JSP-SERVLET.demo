package pe.edu.tecsup.mod02_lab04.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pe.edu.tecsup.mod02_lab04.modelo.ProgrammingLanguage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "FindPLServlet", value = "/find-programming-languages")
public class FindPLServlet extends HttpServlet {

    private final Map<String, ProgrammingLanguage> programmingLgs = new HashMap<>();

    public FindPLServlet() {
        programmingLgs.put("0001", new ProgrammingLanguage("0001", "Java", "Java"));
        programmingLgs.put("0002", new ProgrammingLanguage("0002", "Python", "Python"));
        programmingLgs.put("0003", new ProgrammingLanguage("0003", "PHP", "PHP"));
        programmingLgs.put("0004", new ProgrammingLanguage("0004", "C#", "C#"));
        programmingLgs.put("0005", new ProgrammingLanguage("0005", "C++", "C++"));
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println(programmingLgs);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String plCode = req.getParameter("plCode");
        System.out.println("PL Code: " + plCode);

        ProgrammingLanguage pLg = programmingLgs.get(plCode);
        System.out.println("PL: " + pLg);

        if (pLg != null) req.setAttribute("pLg", pLg);

        req.getRequestDispatcher("pLgs.jsp")
                .forward(req, resp);
    }
}
