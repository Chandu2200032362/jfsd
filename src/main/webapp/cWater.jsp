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
        <form id="waterProblemForm">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Your name" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Your email (use watercz@gmail.com)" required>
            
            <label for="problem">Problem</label>
            <input type="text" id="problem" name="problem" placeholder="Specify: Water" required>

            <label for="description">Problem Description</label>
            <textarea id="description" name="description" placeholder="Describe your problem" required></textarea>

            <button type="submit">Submit</button>
        </form>

        <div id="responseMessage" class="message"></div>
    </div>

    <script type="text/javascript">
        document.getElementById("waterProblemForm").addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent default form submission behavior

            // Gather form data
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const problem = document.getElementById("problem").value;
            const description = document.getElementById("description").value;

            // Validate required email and problem fields
            if (email !== "watercz@gmail.com") {
                displayMessage("Invalid email address. Please use watercz@gmail.com.", "error");
                return;
            }

            if (problem.toLowerCase() !== "water") {
                displayMessage("Invalid problem type. Please specify 'Water'.", "error");
                return;
            }

            // Create data payload
            const formData = new URLSearchParams();
            formData.append("name", name);
            formData.append("email", email);
            formData.append("problem", problem);
            formData.append("description", description);

            // Send data using fetch
            fetch("/insertproblem", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: formData
            })
                .then(response => {
                    if (response.ok) {
                        displayMessage("Your problem has been successfully submitted!", "success");
                        document.getElementById("waterProblemForm").reset(); // Clear the form
                    } else {
                        displayMessage("There was an error submitting your problem. Please try again.", "error");
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    displayMessage("An unexpected error occurred. Please try again later.", "error");
                });
        });

        // Utility function to display messages
        function displayMessage(message, type) {
            const responseMessage = document.getElementById("responseMessage");
            responseMessage.textContent = message;
            responseMessage.className = `message ${type}`;
        }
    </script>
</body>
</html>
