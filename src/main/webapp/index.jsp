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

<style>
  .hero {
    text-align: center;
    padding: 40px;
    background: linear-gradient(135deg, #121212, #1f1f1f);
    color: #fff;
    font-family: 'Segoe UI', sans-serif;
  }

  .hero h1 {
    font-size: 2.8rem;
    margin-bottom: 10px;
    color: #00ffd5;
  }

  .hero p {
    font-size: 1.2rem;
    margin-bottom: 20px;
    color: #ccc;
  }

  .hero a.btn-start {
    background-color: #00ffd5;
    padding: 10px 20px;
    text-decoration: none;
    color: #000;
    font-weight: bold;
    border-radius: 8px;
    transition: 0.3s;
  }

  .hero a.btn-start:hover {
    background-color: #fff;
    color: #000;
  }

  .card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 1.5rem;
    padding: 20px;
    background-color: #f4f4f4;
  }

  .card {
    width: 18rem;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    transition: 0.3s;
  }

  .card:hover {
    transform: scale(1.03);
  }
</style>
</head>
<body>

<table border="3" align="center" style="width:100%">
<tr>
  <th>
    <!-- Hero Section Below Heading (optional short description or button) -->
    <div class="hero">
    
      <p>Explore powerful AI tools, smart automation, and tech insights all in one place.</p>
      <a href="login.jsp" class="btn-start">Start Now</a>
    </div>

      <!-- Cards Section -->
      <div class="card-container">

        <!-- Card 1 -->
        <div class="card">
            <div class="card-body">
            <h5 class="card-title">Learn AI Basics</h5>
            <p class="card-text">Start your journey into Artificial Intelligence with easy tutorials.</p>
            <a href="https://www.ibm.com/cloud/learn/what-is-artificial-intelligence" class="btn btn-primary" target="_blank">Explore</a>
          </div>
        </div>

        <!-- Card 2 -->
        <div class="card">
            <div class="card-body">
            <h5 class="card-title">AI Tools & APIs</h5>
            <p class="card-text">Discover powerful tools like ChatGPT, DALL·E, and more.</p>
            <a href="https://openai.com/" class="btn btn-primary" target="_blank">Visit OpenAI</a>
          </div>
        </div>

        <!-- Card 3 -->
        <div class="card">
           <div class="card-body">
            <h5 class="card-title">Latest AI News</h5>
            <p class="card-text">Stay updated with the future trends of technology and AI.</p>
            <a href="https://www.technologyreview.com/topic/artificial-intelligence/" class="btn btn-primary" target="_blank">Read More</a>
          </div>
        </div>

        <!-- Card 4 -->
        <div class="card">
            <div class="card-body">
            <h5 class="card-title">Build AI Projects</h5>
            <p class="card-text">Get project ideas and build your AI-powered apps today!</p>
            <a href="https://github.com/topics/ai-projects" class="btn btn-primary" target="_blank">View Projects</a>
          </div>
        </div>
        <!-- Card 5 -->
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Learn Python for AI</h5>
    <p class="card-text">Python is the most used language in AI. Start learning now from scratch.</p>
    <a href="https://www.w3schools.com/python/" class="btn btn-primary" target="_blank">Learn Python</a>
  </div>
</div>
        
        <!-- Card 6 -->
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Free AI Courses</h5>
    <p class="card-text">Enroll in free online courses from top universities and platforms.</p>
    <a href="https://www.coursera.org/collections/ai-for-everyone" class="btn btn-primary" target="_blank">Start Learning</a>
  </div>
</div>

<!-- Card 7 -->
<div class="card">
   <div class="card-body">
    <h5 class="card-title">AI in 5 Min</h5>
    <p class="card-text">Fast video on AI basics.</p>
    <a href="https://www.youtube.com/watch?v=aircAruvnKk" class="btn btn-primary" target="_blank">Watch</a>
  </div>
</div>

<!-- Card 8 -->
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Make Resume</h5>
    <p class="card-text">Free and  easy builder.</p>
    <a href="https://www.canva.com/resumes/" class="btn btn-primary" target="_blank">Start</a>
  </div>
</div>

<!-- Card 9 -->
<div class="card">
   <div class="card-body">
    <h5 class="card-title">AI Internships</h5>
    <p class="card-text">Remote openings.</p>
    <a href="https://internshala.com/internships/artificial-intelligence-internship" class="btn btn-primary" target="_blank">Apply</a>
  </div>
</div>
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
</body>
</html>
