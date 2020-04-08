
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>作业管理系统</title>
  </head>
  <body>
    <div style="margin-left: 150px">
      <ul style="line-height: 90px">
        <li><a href="jsp/addHomework.jsp">添加作业</a></li>
        <li><a href="jsp/addStudent.jsp">添加学生</a></li>
        <li><a href="${pageContext.request.contextPath}/showHomework">查询作业提交情况</a></li>
        <li><a href="${pageContext.request.contextPath}/allHomework">提交作业</a></li>
      </ul>
    </div>

  </body>
</html>
