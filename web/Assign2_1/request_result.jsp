<%--
  Created by IntelliJ IDEA.
  User: YM
  Date: 2023-03-30
  Time: 오전 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<% request.setCharacterEncoding("UTF-8"); %>

<head>
    <meta charset="UTF-8">
    <title>정보 확인</title>
</head>
<body>
<header>
    Home > 입력 정보 확인
    <hr>
</header>
<p> 이름 : <%=request.getParameter("name")%>
</p>
<p> 비밀번호 : <%=request.getParameter("password")%>
</p>
<p> E-mail : <%=request.getParameter("email")%>
</p>
<p> 연락처 : <%=request.getParameter("phone-number")%> <%=request.getParameter("num1")%>-<%=request.getParameter("num2")%>-<%=request.getParameter("num3")%>
</p>
<p> 성별 : <%=request.getParameter("gender")%>
</p>
<%
    String[] value = request.getParameterValues("hobby");
    out.print("취미 : ");
    for (String val : value) {
        out.print(val +" ");
    }
%>
<p> 본인 소개 : <%=request.getParameter("memo")%>
</p>
</body>
</html>
