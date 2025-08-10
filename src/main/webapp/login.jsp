<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie"%>
<%
String usname = "";
String passd = "";
Cookie ck[] = request.getCookies();
if(ck != null){
    for(Cookie cki : ck){
        if("uname".equals(cki.getName())){
            usname = cki.getValue();
        }
        if("pass".equals(cki.getName())){
            passd = cki.getValue();
        }
    }
}
%>
<%
String user = request.getParameter("user");
String msg = "";
if(user != null ){
    if(user.equals("fail")){
        msg = "Wrong Username or password";
    } else {
        msg = "Error while searching account with given credentials";
    }
    %>
    <script>
    window.onload = function(){
        alert("<%= msg%>");
        window.location.replace("login.jsp");
    }
    </script>
    <%
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI POWERED Advance SOFTWARE (Warning: Do not open if hazardous)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            font-family: 'Segoe UI', sans-serif;
            min-height: 100vh;
        }
        #m_container {
            background: rgba(255,255,255,0.95);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            max-width: 400px;
            margin: 40px auto;
            animation: fadeIn 0.8s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .form-control {
            border-radius: 20px;
            padding: 10px 15px;
        }
        .btn-custom {
            background: linear-gradient(90deg, #00ffd5, #0077ff);
            color: #fff;
            border: none;
            border-radius: 30px;
            padding: 10px 20px;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            background: linear-gradient(90deg, #0077ff, #00ffd5);
            transform: scale(1.05);
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #ddd;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>

<table border="0" align="center" style="width:100%">

    <tr>
        <th colspan="2" style="padding: 40px; background: linear-gradient(135deg, #121212, #1f1f1f); color: #00ffd5; font-size: 2.8rem; font-family: 'Segoe UI', sans-serif; text-align: center;">
            Welcome to the Future of Intelligence
        </th>
    </tr><tr>
        <th>
            <div id="m_container">
                <h2 class="text-center mb-4">Login Details</h2>
                <form action="loginservice" method="post" name="login-form" id="login-form">
                    <input type="hidden" name="step" value="login">

                    <label for="username">Username</label>
                    <input type="text" id="username" class="form-control mb-3" name="uname" required>

                    <label for="pass">Password</label>
                    <input type="password" id="pass" class="form-control mb-3" name="pass" required minlength="8">

                    <div class="form-check text-start mb-3">
                        <input type="checkbox" class="form-check-input" name="ckbox" id="ckbox">
                        <label for="ckbox" class="form-check-label">Remember Me</label>
                    </div>

                    <div class="d-flex justify-content-between">
                        <input type="submit" class="btn btn-custom" value="Login">
                        <input type="button" class="btn btn-secondary" id="clr_btn" value="Clear">
                    </div>

                    <div class="mt-3 text-center">
                        <a href="register.jsp">New user? Signup</a> |
                        <a href="verification.jsp">Forgot Password?</a>
                    </div>
                </form>
            </div>
        </th>
    </tr>

    <tr>
        <th colspan="2">
            <div class="footer">
                "Machines can do amazing things — but only with human imagination."
            </div>
        </th>
    </tr>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
	alert("Hello world");
    document.getElementById('username').value = "<%= usname %>";
    document.getElementById('pass').value = "<%= passd %>";

    document.addEventListener('DOMContentLoaded', function () {
        const clearButton = document.getElementById('clr_btn');
        const loginForm = document.getElementById('login-form');

        clearButton.addEventListener('click', function () {
            document.getElementById('username').value = '';
            document.getElementById('pass').value = '';
        });

        loginForm.addEventListener('submit', function (event) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('pass').value;
            if (username === '' || password === '') {
                event.preventDefault();
                alert('Please fill in all fields.');
            }
        });
    });
</script>

</body>
</html>
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI-Powered Header</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background: linear-gradient(90deg, #4e54c8, #8f94fb);
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
        }

        .nav-link {
            color: white !important;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: #e94057 !important;
        }

        .dropdown-menu {
            background-color: #ffffff;
        }

        .dropdown-item:hover {
            background-color: #f1f1f1;
        }

        .form-control {
            border-radius: 20px;
            border: 2px solid #e0e0e0;
        }

        .form-control:focus {
            border-color: #4e54c8;
            box-shadow: 0 0 0 0.2rem rgba(78, 84, 200, 0.25);
        }

        .btn-outline-success {
            border-radius: 20px;
        }

        .btn-outline-primary {
            border-radius: 20px;
        }

        .btn-primary {
            border-radius: 20px;
        }

        .btn-primary:hover {
            background-color: #e94057;
            border-color: #e94057;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">AI-Powered</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Services
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Blogs</a></li>
                        <li><a class="dropdown-item" href="#">Documentation</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                
            <li class="nav-item">
                    <a class="nav-link" href="feedback.jsp">Rate  Us</a>
                </li>
            </ul>

            <!-- Right Side -->
            <form class="d-flex me-3" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

            <!-- Login & Signup Buttons -->
            <div class="d-flex">
                <a href="login.jsp" class="btn btn-outline-primary me-2">Login</a>
                <a href="register.jsp" class="btn btn-primary">Sign Up</a>
            </div>

        </div>
    </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.min.js" integrity="sha384-7qAoOXltbVP82dhxHAUje59V5r2YsVfBafyUDxEdApLPmcdhBPg1DKg1ERo0BZlK" crossorigin="anonymous"></script>

</body>
</html>
--%>