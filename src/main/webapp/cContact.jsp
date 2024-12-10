<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cHome.css">
    <title>Contact - Citizen</title>
    <style>
        .intro-section {
            padding: 20px;
            text-align: left;
            background-color: #f9f9f9;
            border-radius: 10px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .intro-section h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .intro-section p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        textarea {
            resize: none;
        }

        .submit-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="header">
        <header>Welcome Citizen</header>
    </div>
    <nav class="menu">
        <ol>
            <li class="menu-item"><a href="cHome.jsp">Home</a></li>
            <li class="menu-item"><a href="cAbout.jsp">About</a></li>
            <li class="menu-item">
                <a href="#0">Problems</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="cWater.jsp">Water</a></li>
                    <li class="menu-item"><a href="cElectricity.jsp">Electricity</a></li>
                    <li class="menu-item"><a href="cMunicipal.jsp">Municipal</a></li>
                    <li class="menu-item"><a href="cEducation.jsp">Education</a></li>
                    <li class="menu-item"><a href="cAgriculture.jsp">Agriculture</a></li>
                    <li class="menu-item"><a href="cOther.jsp">Other</a></li>
                </ol>
            </li>
            <li class="menu-item"><a href="cContact.html">Contact</a></li>
        </ol>
    </nav>

    <div class="intro-section">
        <h2 style="text-align: center;">Contact Us</h2>
        <form id="contactForm">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="problem">Issue Faced:</label>
                <input type="text" id="problem" name="problem" placeholder="Describe the problem" required>
            </div>
            <button type="submit" class="submit-button">Submit</button>
        </form>
        <p style="margin-top: 20px; font-weight: bold;">Contact No: 1258796</p>
    </div>

    <script type="text/javascript">
        // Handle form submission without refreshing the page
        document.getElementById("contactForm").addEventListener("submit", function (event) {
            // Prevent the default form action
            event.preventDefault();

            // Get form data
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const problem = document.getElementById("problem").value;

            // Create the data payload
            const formData = new URLSearchParams();
            formData.append("name", name);
            formData.append("email", email);
            formData.append("problem", problem);

            // Use fetch to handle data submission
            fetch("/contact/csave", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: formData
            })
                .then(response => {
                    if (response.ok) {
                        alert("Your issue has been successfully submitted!");
                        // Optionally clear the form fields
                        document.getElementById("contactForm").reset();
                    } else {
                        alert("There was a problem submitting your issue. Please try again.");
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("An error occurred. Please try again later.");
                });
        });
    </script>
</body>
</html>
