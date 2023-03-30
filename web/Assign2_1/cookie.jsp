<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>cookie Test-Set Cookie</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String name = "박영민";
  String mail = "py980627@gmail.com";
  Cookie c1 = new Cookie("name", name);
  Cookie c2 = new Cookie("mail", mail);
  c1.setMaxAge(60*60);
  c2.setMaxAge(60*60);
  response .addCookie(c1);
  response.addCookie(c2);
%>
<div align="center">
  <h2>쿠키 테스트</h2>
  <p>쿠키 설정이 완료되었습니다.</p>
  <a href="cookie_result.jsp">쿠키보기</a>
  <a href="cookie_delete.jsp">쿠키삭제</a>
</div>
</body>
</html>
