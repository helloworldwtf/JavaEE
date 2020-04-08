
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作结果</title>
</head>
<body>
<%
    String type = (String)request.getAttribute("type");
    boolean isOK = (boolean)request.getAttribute("isOK");
    if (type.equals("addHomework")){

        if (isOK){
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px; color:black"><%="成功"%></p>

<%
        }else{
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px;color: black"><%="失败"%></p>

<%
        }
    }else if (type.equals("addStudent")){
        if (isOK){
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px; color: black"><%="成功"%></p>

<%
        }else{
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px;color: black"><%="已有学生信息"%></p>

<%
        }
    }else if (type.equals("addStudentHomework")){
            if (isOK){
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px; color: black"><%="成功"%></p>

<%
                }else {
%>

<p style="margin: 50px; font-family: Arial; font-size: 30px; color: black"><%="失败"%></p>

<%
            }
    }
%>
<a href="index.jsp" style="margin: 10px">返回首页</a>
</body>
</html>
