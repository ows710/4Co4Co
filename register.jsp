<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="assets/css/register.css" />
</head>
<body>
    <div class="form-container">
        <h2>회원가입</h2>
        <form action="register.jsp" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="username">ID</label>
                <input type="text" id="username" name="username" required placeholder="ID">
            </div>
            <div class="form-group">
                <label for="password">PASSWORD</label>
                <input type="password" id="password" name="password" required placeholder="PASSWORD">
            </div>
            <div class="form-group">
                <label for="email">EMAIL</label>
                <input type="email" id="email" name="email" required placeholder="EMAIL" oninput="validateEmail()">
            </div>
            <div class="form-group">
                <label for="name">NAME</label>
                <input type="text" id="name" name="name" required placeholder="NAME">
            </div>
            <div class="form-group">
                <label for="birthdate">BIRTHDATE</label>
                <input type="date" id="birthdate" name="birthdate" >
            </div>
            <input type="submit" value="가입하기">
        </form>
    </div>
    <script src="./assets/js/register.js"></script>
</body>
</html>
