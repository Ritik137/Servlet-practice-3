package com.attr.controller;

import com.attr.model.Calculation;
import com.attr.model.CalculationDAO;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/S1")
public class CalcController extends HttpServlet {

	private int add(int a, int b) {
		return a + b;
	}

	private int sub(int a, int b) {
		return a - b;
	}

	private int mul(int a, int b) {
		return a * b;
	}

	private int div(int a, int b) {
		return b != 0 ? a / b : 0;
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		int n1 = Integer.parseInt(req.getParameter("n1"));
		int n2 = Integer.parseInt(req.getParameter("n2"));
		String op = req.getParameter("op");

		int result = 0;

		switch (op) {
		case "add":
			result = add(n1, n2);
			break;
		case "sub":
			result = sub(n1, n2);
			break;
		case "mul":
			result = mul(n1, n2);
			break;
		case "div":
			result = div(n1, n2);
			break;
		default:
			result = 0;
		}

		// 1️⃣ Calculation object banao
		Calculation calc = new Calculation();
		calc.setNum1(n1);
		calc.setNum2(n2);
		calc.setOperation(op);
		calc.setResult(result);

		// 2️⃣ DAO call karo (DB save)
		CalculationDAO dao = new CalculationDAO();
		dao.save(calc);

//        view
		req.setAttribute("result", result);
		req.getRequestDispatcher("result.jsp").forward(req, res);
	}
}
