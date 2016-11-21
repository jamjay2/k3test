package com.lj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//扩展 HttpServlet 类
//@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {

private String message;

public void init() throws ServletException
{
   // 执行必需的初始化
   message = "sddddddddddddd";
}

public void doGet(HttpServletRequest request,
                 HttpServletResponse response)
         throws ServletException, IOException
{
   // 设置响应内容类型
   response.setContentType("text/html");

   // 实际的逻辑是在这里
//   PrintWriter out = response.getWriter();
//   out.println("<h1>" + message + "</h1>");
   
   
   
   
//   response.sendRedirect("jsp/success.jsp");
   request.getRequestDispatcher("jsp/success.jsp").forward(request,response);
   
//   
   
   
}

}