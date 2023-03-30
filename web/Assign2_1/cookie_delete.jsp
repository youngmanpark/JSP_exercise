<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>cookie Test-Delete Cookie</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Cookie[] c = request.getCookies();
    for(int i = 0; i<c.length; i++){
        Cookie delCookie = new Cookie(c[i].getName(),"");
        delCookie.setMaxAge(0);
        response.addCookie(delCookie);
    }
%>
<p>쿠키가 삭제되었습니다. <a
        href="cookie_result.jsp">쿠키보기</a></p>
</body>
</html>
