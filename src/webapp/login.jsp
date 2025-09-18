<%@ page language="java" %>
<html>
<head><title>Login Page</title></head>
<body>
    <h2>Login</h2>
    <form method="post" action="login">
        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </form>
    <p style="color:red">
        ${errorMessage}
    </p>
</body>
</html>
