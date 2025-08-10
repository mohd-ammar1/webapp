<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body><div class="container-fluid">
    <div class="row">
        
        <!-- Main Content -->
        <div class="col-md-9 col-lg-10 p-4">
            <div class="card shadow-lg border-0">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Give Us Your Feedback</h4>
                </div>
                <div class="card-body">
                    <form id="feedbackForm" onsubmit="sendFeedback(event)">
                        
                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label">Your Name</label>
                            <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Your Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                        </div>
				
							<div class="mb-3">
                            <label class="form-label">Your Mobile Number</label>
                            <input type="tel" name="mobNum" class="form-control" placeholder="Enter your Phone Number" required>
                        </div>
							
                        <!-- Rating -->
                        <div class="mb-3">
                            <label class="form-label">Rate Us</label>
                            <select name="rating" class="form-select" required>
                                <option value="">Select Rating</option>
                                <option value="5">⭐⭐⭐⭐⭐ Excellent</option>
                                <option value="4">⭐⭐⭐⭐ Good</option>
                                <option value="3">⭐⭐⭐ Average</option>
                                <option value="2">⭐⭐ Poor</option>
                                <option value="1">⭐ Very Bad</option>
                            </select>
                        </div>

                        <!-- Feedback Message -->
                        <div class="mb-3">
                            <label class="form-label">Your Feedback</label>
                            <textarea name="message" class="form-control" rows="4" placeholder="Write your feedback..." required></textarea>
                        </div>

                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-primary px-4">Submit Feedback</button>
                        <button type="reset" class="btn btn-secondary px-4">Clear</button>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>function sendFeedback(event) {
    event.preventDefault(); // Stop normal form submit
    const form = document.getElementById("feedbackForm");
    const formdata = new FormData(form);

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "feedbackService", true); // ✅ use POST
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert(xhr.responseText);
        }
    };
    xhr.send(formdata); // Send form data in POST body
}

</script>
</body>
</html>
