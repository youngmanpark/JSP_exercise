<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>2018305024 박영민</title>
</head>
<body>
<header>
    Home > 회원 정보 입력
    <hr>
</header>
<form action="request_result.jsp" method="POST">
    <section>개인 정보 입력
        <article>
            <div>
                <label for="name">이름:</label><br>
                <input type="text" id="name" name="name" required><br>
            </div>
            <div>
                <label for="password">비밀번호:</label><br>
                <input type="password" id="password" name="password" required><br>
            </div>
            <div>
                <label for="email">E-mail:</label><br>
                <input type="email" id="email" name="email" required><br>
            </div>
            <div>
                <label for="phone-number">연락처:</label><br>
                <select id="phone-number" name="phone-number" required>
                    <option value="SKT">SKT</option>
                    <option value="LG">LG</option>
                    <option value="KT">KT</option>
                    <option value="KT">자급제</option>
                </select>
                <input type="text" size="5" name="num1" required> -
                <input type="text" size="5" name="num2" required> -
                <input type="text" size="5" name="num3" required><br>

            </div>
            <div>
                성별 :
                <input type="radio" id="male" name="gender" value="남">
                <label for="male">남</label>
                <input type="radio" id="female" name="gender" value="여">
                <label for="female">여</label><br>
            </div>
            <div>
                취미 :
                <input type="checkbox" name="hobby" value="운동"> 운동
                <input type="checkbox" name="hobby" value="독서"> 독서
                <input type="checkbox" name="hobby" value="여행"> 여행
                <input type="checkbox" name="hobby" value="음악감상"> 음악감상<br>
            </div>
            <div>
                본인 소개 :<br>
                <textarea name="memo" cols="50" rows="5"></textarea>
            </div>
            <hr>

            <input type="submit" value="가입하기">
            <input type="reset" value="다시작성">
        </article>
    </section>
</form>

</body>
</html>