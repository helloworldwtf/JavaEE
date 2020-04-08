package org.example.javaee.class01.servlet;

import org.example.javaee.class01.jdbc.StudentHomeWorkJdbc;
import org.example.javaee.class01.model.StudentHomework;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/query")
public class QueryStudentHomeworkServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        //从数据库读取指定作业id的所有记录
        List<StudentHomework> list = StudentHomeWorkJdbc.selectAll(id);//访问数据库
        req.setAttribute("list",list);
        req.getRequestDispatcher("jsp/homeworkSubmission.jsp").forward(req,resp); //展示数据
    }
}
