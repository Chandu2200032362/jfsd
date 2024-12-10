<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>

<%@ page import="java.util.Properties"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Water Problem Submission</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 8px;
            font-weight: bold;
        }
        input, textarea, button {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            resize: none;
            height: 100px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border: none;
        }
        button:hover {
            background-color: #0056b3;
        }
        .message {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }
        .error {
            color: red;
        }
        .success {
            color: green;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Report a Water Problem</h1>
        <%
            String message = null;
            String messageClass = "";

            // Check if form was submitted
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String name = request.getParameter("name");
                String smail = request.getParameter("smail");
                String water = request.getParameter("water");
                String email = request.getParameter("email");
                String problem = request.getParameter("problem");

                if (email.equalsIgnoreCase("problemcz@gmail.com")) {
                    try {
                        // Simulate sending an email or storing the data
                        // You can add actual email-sending code here if needed
                        message = "Thank you, " + name + "! Your problem has been submitted.";
                        messageClass = "success";
                    } catch (Exception e) {
                        message = "An error occurred while submitting your problem. Please try again.";
                        messageClass = "error";
                    }
                } else {
                    message = "Invalid email address. Please use watercz@gmail.com.";
                    messageClass = "error";
                }
                
            }
        %>

        <form id="problemForm" method="post">
            <label for="name">Name</label>
            <input type="text" id="T1" name="name" placeholder="Your name" required>
            
            <label for="semail">Email</label>
            <input type="email" id="T2" name="semail" placeholder="Your mail" required>
            
            <label for="problem">Problem</label>
            <input type="text" id="T4" name="water" placeholder="Any Problem other than we mentioned" required>

            <label for="email">Email</label>
            <input type="email" id="T3" name="email" placeholder="Only Use problemcz@gmail.com" required>

            <label for="problem">Problem Description</label>
            <textarea id="problem" id="T5" name="problem" placeholder="Describe your problem" required></textarea>

            <button type="submit" onClick="signup()">Submit</button>
        </form>

        <% if (message != null) { %>
            <div class="message <%= messageClass %>">
                <%= message %>
            </div>
        <% } %>
    </div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">

function signup() {
    // Get values from the form fields
    const name = document.getElementById("T1").value;
    const smail = document.getElementById("T2").value;
    const mail = document.getElementById("T3").value;
    const problem = document.getElementById("T4").value;
    const description = document.getElementById("T5").value;

    // Prepare data to send in the request
    const formData = new URLSearchParams();
    formData.append("T1", name);
    formData.append("T2", smail);
    formData.append("T3", mail);
    formData.append("T4", problem);
    formData.append("T5", description);

    // Send AJAX POST request to /insertuser
    fetch("insertproblem", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: formData
    })
    .then(response => {
        if (response.ok) {
            window.location.href = "/cHome.jsp"; // Redirect to home on success
        } else {
            console.error("Failed to submit Problem.");
        }
    })
    .catch(error => console.error("Error:", error));
}


</script>
</html>
