<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="personBean" class="Assign3.PersonBean" scope="session" />
<jsp:setProperty name="personBean" property="*" />
<html>
<head>
    <meta charset="UTF-8">
    <title>2018305024 박영민</title>
</head>
<body>
<header>
  Home > 데이터 형식의 유효성 검사후 출력
  <hr>
</header>
<p>작성자: <jsp:getProperty name="personBean" property="name"/></p>
<p>이메일: <jsp:getProperty name="personBean" property="email"/></p>
</body>
</html>
