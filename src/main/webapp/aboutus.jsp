<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Nexus - Contact Us</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        :root {
            --primary-color: #4e54c8;
            --secondary-color: #8f94fb;
            --accent-color: #e94057;
            --dark-color: #242a56;
            --light-color: #f8f9fa;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            color: var(--dark-color);
            
        }
        
        .ai-navbar {
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
        }
        
        .hero-section {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: white;
            padding: 5rem 0;
            position: relative;
            overflow: hidden;
        }
        
        .hero-section::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: radial-gradient(circle at 20% 50%, rgba(255,255,255,0.2) 0%, transparent 20%);
        }
        
        .contact-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
            overflow: hidden;
            margin-bottom: 30px;
        }
        
        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }
        
        .contact-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 15px;
        }
        
        .form-control {
            border-radius: 8px;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
        }
        
        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(78, 84, 200, 0.25);
        }
        
        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .btn-primary:hover {
            background-color: var(--dark-color);
            transform: translateY(-2px);
        }
        
        .ai-pattern {
            background-image: url('https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/0a672240-9822-4310-80f5-a2c9db9facb1.png');
            background-size: cover;
            height: 100px;
            position: relative;
            margin-bottom: 3rem;
        }
        
        .map-container {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            height: 100%;
        }
        
        .floating-icons {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            pointer-events: none;
        }
        
        .floating-icon {
            position: absolute;
            color: rgba(255, 255, 255, 0.3);
            font-size: 1.5rem;
            animation: floatAnimation 15s infinite linear;
        }
        
        @keyframes floatAnimation {
            0% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(180deg); }
            100% { transform: translateY(0) rotate(360deg); }
        }
        
        .social-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--primary-color);
            color: white;
            margin-right: 10px;
            transition: all 0.3s ease;
        }
        
        .social-icon:hover {
            background: var(--accent-color);
            transform: translateY(-3px);
        }
        
        .feature-icon {
            font-size: 1.5rem;
            color: var(--primary-color);
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <!-- Hero Section -->
    <section class="hero-section text-center">
        <div class="floating-icons">
            <i class="floating-icon bi bi-cpu" style="top: 20%; left: 15%;"></i>
            <i class="floating-icon bi bi-lightbulb" style="top: 60%; left: 25%;"></i>
            <i class="floating-icon bi bi-graph-up" style="top: 30%; left: 75%;"></i>
            <i class="floating-icon bi bi-code-slash" style="top: 70%; left: 85%;"></i>
        </div>
        <div class="container position-relative">
            <h1 class="display-4 fw-bold mb-4">Connect With Our AI Experts</h1>
            <p class="lead mb-4 mx-auto" style="max-width: 800px;">
                Have questions about our AI solutions or want to discuss your next project? Our team of machine learning specialists is ready to help you innovate and transform your business.
            </p>
        </div>
    </section>
    
    <!-- Contact Section -->
    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold mb-3">Contact Information</h2>
                <p class="text-muted">We're here to answer your questions and provide support</p>
            </div>
            
            <div class="row g-4">
                <!-- Contact Card 1 -->
                <div class="col-md-4">
                    <div class="contact-card h-100 p-4 text-center">
                        <div class="contact-icon">
                            <i class="bi bi-geo-alt-fill"></i>
                        </div>
                        <h5 class="fw-bold mb-3">Our Location</h5>
                        <p class="text-muted">AI Innovation Hub<br>123 Tech Boulevard<br>San Francisco, CA 94107</p>
                        <a href="#" class="btn btn-sm btn-outline-primary mt-3">View on Map</a>
                    </div>
                </div>
                
                <!-- Contact Card 2 -->
                <div class="col-md-4">
                    <div class="contact-card h-100 p-4 text-center">
                        <div class="contact-icon">
                            <i class="bi bi-envelope-fill"></i>
                        </div>
                        <h5 class="fw-bold mb-3">Email Us</h5>
                        <p class="text-muted">For general inquiries<br><a href="mailto:info@ainexus.ai">info@ainexus.ai</a></p>
                        <p class="text-muted">For technical support<br><a href="mailto:support@ainexus.ai">support@ainexus.ai</a></p>
                    </div>
                </div>
                
                <!-- Contact Card 3 -->
                <div class="col-md-4">
                    <div class="contact-card h-100 p-4 text-center">
                        <div class="contact-icon">
                            <i class="bi bi-telephone-fill"></i>
                        </div>
                        <h5 class="fw-bold mb-3">Call Us</h5>
                        <p class="text-muted">Customer Support<br>+1 (555) 123-4567</p>
                        <p class="text-muted">Sales<br>+1 (555) 987-6543</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Form and Map Section -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row g-4">
                <!-- Contact Form -->
                <div class="col-lg-6">
                    <div class="contact-card p-4 p-lg-5">
                        <h3 class="fw-bold mb-4">Get In Touch</h3>
                        <form id="contactForm" novalidate>
                            <div class="mb-3">
                                <label for="name" class="form-label">Your Name</label>
                                <input type="text" class="form-control" id="name" required>
                                <div class="invalid-feedback">
                                    Please provide your name.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" required>
                                <div class="invalid-feedback">
                                    Please provide a valid email.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="subject" class="form-label">Subject</label>
                                <select class="form-select" id="subject" required>
                                    <option value="" selected disabled>Select a subject</option>
                                    <option value="general">General Inquiry</option>
                                    <option value="technical">Technical Support</option>
                                    <option value="sales">Sales Inquiry</option>
                                    <option value="partnership">Partnership Opportunity</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a subject.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Message</label>
                                <textarea class="form-control" id="message" rows="5" required></textarea>
                                <div class="invalid-feedback">
                                    Please enter your message.
                                </div>
                            </div>
                            <div class="form-check mb-4">
                                <input class="form-check-input" type="checkbox" id="consent" required>
                                <label class="form-check-label" for="consent">
                                    I agree to the processing of my personal data in accordance with the privacy policy
                                </label>
                                <div class="invalid-feedback">
                                    You must agree before submitting.
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">
                                <i class="bi bi-send-fill me-2"></i>Send Message
                            </button>
                        </form>
                    </div>
                </div>
                
                <!-- Map -->
                <div class="col-lg-6">
                    <div class="contact-card h-100 p-4">
                        <h3 class="fw-bold mb-4">Find Us</h3>
                        <div class="map-container">
                            <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/57ca218a-064d-4f17-95b4-b91e5e8bfaaf.png" alt="Interactive map showing the location of AI Nexus headquarters in San Francisco" class="img-fluid w-100" style="border-radius: 8px;">
                        </div>
                        <div class="mt-4">
                            <h5 class="fw-bold mb-3">Business Hours</h5>
                            <ul class="list-unstyled">
                                <li class="mb-2"><span class="feature-icon"><i class="bi bi-clock-fill"></i></span> Monday - Friday: 9:00 AM - 6:00 PM</li>
                                <li class="mb-2"><span class="feature-icon"><i class="bi bi-clock-fill"></i></span> Saturday: 10:00 AM - 4:00 PM</li>
                                <li class="mb-2"><span class="feature-icon"><i class="bi bi-clock-fill"></i></span> Sunday: Closed</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Features Section -->
    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold mb-3">Why Contact Us?</h2>
                <p class="text-muted">Discover how our AI expertise can benefit you</p>
            </div>
            
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="contact-card p-4 h-100">
                        <div class="d-flex align-items-start mb-3">
                            <div class="feature-icon">
                                <i class="bi bi-lightning-charge-fill"></i>
                            </div>
                            <h5 class="fw-bold">Fast Response</h5>
                        </div>
                        <p class="text-muted">Our AI-powered support system ensures quick responses to all your inquiries, with most emails answered within 2 business hours.</p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="contact-card p-4 h-100">
                        <div class="d-flex align-items-start mb-3">
                            <div class="feature-icon">
                                <i class="bi bi-person-badge-fill"></i>
                            </div>
                            <h5 class="fw-bold">Expert Team</h5>
                        </div>
                        <p class="text-muted">Connect with our team of PhD-level AI researchers and experienced engineers who have implemented solutions across industries.</p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="contact-card p-4 h-100">
                        <div class="d-flex align-items-start mb-3">
                            <div class="feature-icon">
                                <i class="bi bi-shield-lock-fill"></i>
                            </div>
                            <h5 class="fw-bold">Secure Communication</h5>
                        </div>
                        <p class="text-muted">All communications are encrypted end-to-end, ensuring your data and intellectual property are always protected.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- CTA Section -->
    <section class="py-5" style="background: linear-gradient(135deg, var(--dark-color) 0%, #1a2035 100%); color: white;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <h2 class="fw-bold mb-3">Ready to Transform Your Business with AI?</h2>
                    <p class="lead mb-0">Schedule a free consultation with our AI specialists today.</p>
                </div>
                <div class="col-lg-4 text-lg-end">
                    <button class="btn btn-light btn-lg px-4">
                        <i class="bi bi-calendar-check me-2"></i>Schedule Call
                    </button>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="py-5 bg-dark text-white">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4">
                    <h5 class="fw-bold mb-3">
                        <i class="bi bi-robot me-2"></i>AI Nexus
                    </h5>
                    <p>Pioneering intelligent solutions for a smarter tomorrow through cutting-edge artificial intelligence and machine learning technologies.</p>
                    <div class="mt-3">
                        <a href="#" class="social-icon"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-github"></i></a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h6 class="fw-bold text-uppercase mb-3">Quick Links</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="#" class="text-white-50">Home</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Products</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Services</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Pricing</a></li>
                        <li><a href="#" class="text-white-50">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h6 class="fw-bold text-uppercase mb-3">Technologies</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="#" class="text-white-50">Machine Learning</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Natural Language Processing</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Computer Vision</a></li>
                        <li class="mb-2"><a href="#" class="text-white-50">Predictive Analytics</a></li>
                        <li><a href="#" class="text-white-50">Generative AI</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h6 class="fw-bold text-uppercase mb-3">Newsletter</h6>
                    <p class="text-white-50">Subscribe to our newsletter for the latest in AI innovations.</p>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control bg-light" placeholder="Your Email">
                        <button class="btn btn-primary" type="button"><i class="bi bi-send"></i></button>
                    </div>
                    <p class="small text-white-50">We respect your privacy. Unsubscribe at any time.</p>
                </div>
            </div>
            <hr class="my-4">
            <div class="row">
                <div class="col-md-6">
                    <p class="small text-white-50 mb-md-0">© 2023 AI Nexus. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <a href="#" class="text-white-50 small me-3">Privacy Policy</a>
                    <a href="#" class="text-white-50 small me-3">Terms of Service</a>
                    <a href="#" class="text-white-50 small">Cookies</a>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Form Validation -->
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';
            
            // Fetch the form we want to apply custom Bootstrap validation styles to
            var form = document.getElementById('contactForm');
            
            form.addEventListener('submit', function(event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                
                form.classList.add('was-validated');
            }, false);
        })();
        
        // Simple animation for form submission
        document.getElementById('contactForm').addEventListener('submit', function(e) {
            e.preventDefault();
            if (this.checkValidity()) {
                // Simulate sending
                const submitBtn = this.querySelector('button[type="submit"]');
                const originalText = submitBtn.innerHTML;
                submitBtn.innerHTML = '<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Sending...';
                submitBtn.disabled = true;
                
                // Simulate AJAX request
                setTimeout(function() {
                    submitBtn.innerHTML = '<i class="bi bi-check-circle-fill me-2"></i> Message Sent';
                    
                    // Reset form after success
                    setTimeout(function() {
                        form.reset();
                        form.classList.remove('was-validated');
                        submitBtn.innerHTML = originalText;
                        submitBtn.disabled = false;
                        
                        // Show success alert
                        const alert = document.createElement('div');
                        alert.className = 'alert alert-success position-fixed top-0 end-0 m-4';
                        alert.style.zIndex = '1100';
                        alert.role = 'alert';
                        alert.innerHTML = 'Your message has been sent successfully! We will get back to you soon.';
                        document.body.appendChild(alert);
                        
                        // Remove alert after 5 seconds
                        setTimeout(function() {
                            alert.classList.add('fade');
                            setTimeout(function() {
                                document.body.removeChild(alert);
                            }, 300);
                        }, 5000);
                    }, 2000);
                }, 1500);
            }
        });
    </script>
</body>
</html>

