package com.attr;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/S1")
public class S1 extends HttpServlet {

    // 🔹 METHODS (calculator logic)
    private int add(int a, int b) {
        return a + b;
    }

    private int subtract(int a, int b) {
        return a - b;
    }

    private int multiply(int a, int b) {
        return a * b;
    }

    private int divide(int a, int b) {
        return b != 0 ? a / b : 0;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int n1 = Integer.parseInt(request.getParameter("n1"));
        int n2 = Integer.parseInt(request.getParameter("n2"));
        String op = request.getParameter("op");

        int result = 0;

        // 🔹 METHOD CALL
        switch (op) {
            case "add":
                result = add(n1, n2);
                break;
            case "sub":
                result = subtract(n1, n2);
                break;
            case "mul":
                result = multiply(n1, n2);
                break;
            case "div":
                result = divide(n1, n2);
                break;
        }

        request.setAttribute("result", result);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
