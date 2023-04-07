<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>2018305024 박영민</title>
</head>
<body>
<header>
  Home > 작성자와 이메일 주소 입력
  <hr>
</header>
<script type="text/javascript">
    function check() {
        var form = document.login;
        var pattern_num = /[0-9]/;	// 숫자
        var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
        var pattern_email = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

        if (pattern_num.test(form.name.value)==true) {
            alert("작성자는 숫자로 시작할 수 없습니다");
        }
        else if (pattern_spc.test(form.name.value)==true) {
            alert("작성자는 특수문자로 시작할 수 없습니다");
        }
        else if (pattern_email.test(form.email.value)==false) {
            alert("이메일형식이 올바르지 않습니다.");
        }
    }
</script>

<form name="login" action="Assign3_2.jsp" method="post">
    <label for="name">작성자:</label><br>
    <input type="text" name="name" id="name"><br>

    <label for="email">이메일:</label><br>
    <input type="email" name="email" id="email"><br>

    <input type="submit" value="신청하기" onclick="check()">
</form>

</body>
</html>