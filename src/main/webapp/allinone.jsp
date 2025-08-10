<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI POWERED Advance SOFTWARE (Warning: Do not open if hazardous)</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" />

<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto');
    
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f4f4f4; /* Light background for contrast */
    }
    
    * {
        margin: 0;
        padding: 0;
    }
    
    i {
        margin-right: 10px;
    }
    
    .navbar-logo {
        padding: 15px;
        color: #fff;
    }
    
    .navbar-mainbg {
        background-color: #5161ce; /* Original navbar color */
        padding: 0px;
    }
    
    #navbarSupportedContent {
        overflow: hidden;
        position: relative;
    }
    
    #navbarSupportedContent ul {
        padding: 0px;
        margin: 0px;
    }
    
    #navbarSupportedContent ul li a {
        color: rgba(255,255,255,0.5); /* Original link color */
        text-decoration: none;
        font-size: 15px;
        display: block;
        padding: 20px 20px;
        transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        position: relative;
    }
    
    #navbarSupportedContent>ul>li.active>a {
        color: #ffffff; /* Active link color */
        background-color: transparent;
        transition: all 0.7s;
    }
    
    .hori-selector {
        display: inline-block;
        position: absolute;
        height: 100%;
        top: 0;
        left: 0;
        transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        background-color: #fff;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        margin-top: 10px;
    }
    
    .hori-selector .right,
    .hori-selector .left {
        position: absolute;
        width: 25px;
        height: 25px;
        background-color: #fff;
        bottom: 10px;
    }
    
    .hori-selector .right {
        right: -25px;
    }
    
    .hori-selector .left {
        left: -25px;
    }
    
    .hori-selector .right:before,
    .hori-selector .left:before {
        content: '';
        position: absolute;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background-color: #5161ce; /* Original color */
    }
    
    .hori-selector .right:before {
        bottom: 0;
        right: -25px;
    }
    
    .hori-selector .left:before {
        bottom: 0;
        left: -25px;
    }
    
    #clock {
        height: 25%; 
        width: 100%; 
        background: #121212; 
        color: white; 
        font-family: 'Segoe UI', sans-serif; 
        padding: 20px; 
        box-sizing: border-box; 
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: start;
    }
</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-mainbg">
    <a class="navbar-brand navbar-logo" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto">
            <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp" onclick="changer(event,'index.jsp')"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="feedback.jsp" onclick="changer(event,'feedback.jsp')"><i class="far fa-address-book"></i>Feedback</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register.jsp" onclick="changer(event,'register.jsp')"><i class="far fa-clone"></i>Sign up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp" onclick="changer(event,'login.jsp')"><i class="far fa-calendar-alt"></i>Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="far fa-chart-bar"></i>Charts</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="far fa-copy"></i>Documents</a>
            </li>
        </ul>
    </div>
</nav>

<table align="center" style="width:100%">
<tr>
    <th style="height:100px; width:20%; margin-top: 0px">
        <div id="clock">
            <iframe src="https://free.timeanddate.com/clock/ia0lc8ui/n54/szw110/szh110/hoc09f/hbw0/hfc09f/cf100/hnce1ead6/hwc000/fas30/fdi62/mqc000/mql15/mqw4/mqd98/mhc000/mhl15/mhw4/mhd98/mmc000/mml10/mmw1/mmd98/hhs2" frameborder="0" width="110" height="110"></iframe>
        </div>
     <a class="weatherwidget-io" href="https://forecast7.com/en/30d1377d27/yamuna-nagar/" data-label_1="YAMUNANAGAR" data-label_2="WEATHER" data-theme="original" >YAMUNANAGAR WEATHER</a>
<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script> </th>
    <th>
        <div style="display: block-flex; justify-content: center; align-items: center; height: 100%;">
            <iframe id="container" style="height: 100vh; width: 100%; border: none;"></iframe>
        </div>
    </th>
</tr>

<!-- Footer -->
<tr>
    <th colspan="2">
        <div style="text-align:center; padding:10px; font-size:14px; color:#888;">
            "Machines can do amazing things — but only with human imagination."
        </div>
    </th>
</tr>
</table>

<!-- jQuery must be loaded before your script -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function changer(e, page) {
        e.preventDefault();
        document.getElementById("container").src = page;
    }

    function test() {
        var tabsNewAnim = $('#navbarSupportedContent');
        var activeItemNewAnim = tabsNewAnim.find('.active');
        var activeWidthNewAnimHeight = activeItemNewAnim.innerHeight();
        var activeWidthNewAnimWidth = activeItemNewAnim.innerWidth();
        var itemPosNewAnimTop = activeItemNewAnim.position();
        var itemPosNewAnimLeft = activeItemNewAnim.position();
        $(".hori-selector").css({
            "top": itemPosNewAnimTop.top + "px", 
            "left": itemPosNewAnimLeft.left + "px",
            "height": activeWidthNewAnimHeight + "px",
            "width": activeWidthNewAnimWidth + "px"
        });
        $("#navbarSupportedContent").on("click", "li", function(e) {
            $('#navbarSupportedContent ul li').removeClass("active");
            $(this).addClass('active');
            var activeWidthNewAnimHeight = $(this).innerHeight();
            var activeWidthNewAnimWidth = $(this).innerWidth();
            var itemPosNewAnimTop = $(this).position();
            var itemPosNewAnimLeft = $(this).position();
            $(".hori-selector").css({
                "top": itemPosNewAnimTop.top + "px", 
                "left": itemPosNewAnimLeft.left + "px",
                "height": activeWidthNewAnimHeight + "px",
                "width": activeWidthNewAnimWidth + "px"
            });
        });
    }

    $(document).ready(function () {
        // Find current page filename
        var current = location.pathname.split("/").pop();

        // Loop through menu items
        $('#navbarSupportedContent ul li a').each(function () {
            var $this = $(this);
            if ($this.attr('href') === current) {
                $('#navbarSupportedContent ul li').removeClass('active');
                $this.parent().addClass('active');
            }
        });

        setTimeout(test); // run your animation positioning
    });

    $(window).on('resize', function() {
        setTimeout(test, 500);
    });

    $(".navbar-toggler").click(function() {
        setTimeout(test);
    });
</script>
</body>
</html>