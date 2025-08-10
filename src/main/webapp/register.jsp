<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register | AI Powered Software</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    #msg {
      color: red;
      display: none;
    }
 /* Default style */
/* Sticky header container */
.header-container {
  position: sticky;
  top: 0;
  background-color: #4B5CF1; /* same as navbar */
  z-index: 1000;
  margin-left: 10%;
  text-align: center;
  transition: all 0.3s ease;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Heading style */
.ai-heading {
  font-size: 3rem;
  color: white;
  font-weight: bold;
  margin: 0;
  transition: font-size 0.3s ease, padding 0.3s ease;
}

/* When scrolled, shrink header */
.header-container.shrink {
  padding: 10px 0;
}

.header-container.shrink .ai-heading {
  font-size: 1.8rem;
}

  </style>
  
<script>

//animation 


  window.addEventListener('scroll', function () {
    const header = document.getElementById('ai-header');
    if (window.scrollY > 50) {
      header.classList.add('shrink');
    } else {
      header.classList.remove('shrink');
    }
  });
//animation over

function checkName() {
	  const nameInput = document.getElementById("name").value.trim();
	  const msg = document.getElementById("nameMsg");

	  if (nameInput === "") {
	    msg.className = "form-text mt-1 text-warning";
	    msg.innerHTML = "⚠👻 Hello... anyone there? Ghosts don't need to register, you do!";
	  }else {
	    msg.className = "form-text mt-1 text-success";
	    msg.innerHTML = "📡 AI is *warming up its storage drives*... press submit to make it official!";
	  }
	}
	
function lastMsgF(){
	  const lastField = document.getElementById("lastMsg");
	  const lnameF = document.getElementById("lNameField");
	  if(lnameF.value.trim()==""){
		  lastMsg.style.display="inline";
		  lastMsg.className = "form-text text-danger"; 
		  lastMsg.innerHTML = "🧬 AI Alert: Last name tells us your true power! Don’t leave it blank.";
	  }else{
		  lastMsg.style.display="inline";
		  lastMsg.className = "form-text text-success";	
		  lastMsg.innerHTML = "🤖 Power recognized. Last name accepted.";    
	  }

}
	
function checkPass() {
	  const passInput = document.getElementById("password");
	  const pass = passInput.value.trim();
	  const passMsg = document.getElementById("passMsg");
	  const simRegex = /^(\d+|[a-zA-Z]+)$/;  // only numbers OR only letters (not allowed)
	  const splRegex = /[!@#$%^&*(),.?:{}|<>]/; // must contain at least one special character
	  passMsg.style.display = "none";
	  passMsg.innerHTML = "";

	  // Validation
	  if (simRegex.test(pass)) {
	    passMsg.style.display = "block";
	    passMsg.className = "form-text text-warning";
	    passMsg.innerHTML = "🤖 Beep! Password can't be just numbers or letters. Mix it up like AI neural nets!";
	    return false;
	  }

	  if (!splRegex.test(pass)) {
	    passMsg.style.display = "block";
	    passMsg.className = "form-text text-warning";
	    passMsg.innerHTML = "😅 Oops! Password needs at least one special character like @ or #. Even AI likes style!";
	    return false;
	  }

	  // If valid
	  passMsg.style.display = "block";
	  passMsg.className = "form-text text-success";
	  passMsg.innerHTML = "✅ Looks secure! Password accepted by Skynet (just kidding).";
	  return true;
	}


</script>
</head>
<body>     
    <div id="ai-header" class="header-container">
  <h1 class="ai-heading">Create Your AI Account</h1>
    
      <div class="container my-5 d-flex justify-content-center">
        <div class="card shadow p-4" style="max-width: 500px; width: 100%;">
          <h2 class="text-center text-primary mb-4">Register</h2>
          <form action="registerService" method="post" id="registerForm">
            <input type="hidden" name="step" value="register">
            <div class="mb-3">
              <input type="text" name="firstName" class="form-control" placeholder="First Name" id="name" onblur="checkName()" required>
  			 <div id="nameMsg" class="form-text mt-1 text-muted"></div>
			</div>
            
            <div class="mb-3">
              <input type="text" name="lastName" id="lNameField" class="form-control" placeholder="Last Name" onblur="lastMsgF()" required>
          	<p id="lastMsg" class="form-text text-danger" style="display: none;"></p>
            </div>
            <div class="mb-3">
              <input type="email" name="email" id="email" onblur="emailAvail()" class="form-control" placeholder="Email" required>
              <p id="msg"></p>
            </div>
            <div class="mb-3">
              <input type="password" name="password" id="password" class="form-control" placeholder="Password" onkeyup="checkPass()" required>
          		<p id="passMsg" class="form-text text-danger" style="display: none;"></p>
            </div>
            <div class="d-flex justify-content-between">
              <input type="submit" value="Register" class="btn btn-primary w-48">
              <input type="reset" value="Clear" class="btn btn-danger w-48" id="clr_btn">
            </div>
            <p class="mt-3 text-center">
              Already have an account?
              <a href="login.jsp" class="text-decoration-none">Login</a>
            </p>
            <% String success = request.getParameter("success"); %>
            <% if ("dpmail".equals(success)) { %>
              <div class="alert alert-warning mt-3">Email already exists. Try another one.</div>
            <% } else if ("false".equals(success)) { %>
              <div class="alert alert-danger mt-3">Registration failed. Please try again.</div>
            <% } else if ("pass".equals(request.getParameter("user"))) { %>
              <script>alert("User inserted successfully");</script>
            <% } else if ("fail".equals(request.getParameter("user"))) { %>
              <script>alert("Unable to insert user");</script>
            <% } else if ("error".equals(request.getParameter("user"))) { %>
              <script>alert("Error while inserting user");</script>
            <% } %>
          </form>
        </div>
      </div>
      <div style="text-align:center; padding:10px; font-size:14px; color:#888;">
        "Machines can do amazing things — but only with human imagination."
      </div>
    
<script>function emailAvail() {
	const emailInput = document.getElementById("email");
	  const email = emailInput.value.trim();
	  const msg = document.getElementById("msg");
	  
	  const emailRegex = /^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$/;//email checker regex
	  if (!emailRegex.test(email)) {
		  msg.className = "form-text mt-1 text-danger"; 
		  msg.style.display = "block";
		  msg.innerHTML = "🤖 AI Error: Did your cat type that email? Try again, human.";
		  return;
		}


  const mail = document.getElementById("email").value;
  const xhr = new XMLHttpRequest();
  xhr.open("GET", "registerService?mail=" + mail, true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
      const msg = document.getElementById("msg");
      msg.style.display = "block";
      msg.innerHTML = xhr.responseText;
    }
  };
  xhr.send();
}
</script>
</body>
</html>