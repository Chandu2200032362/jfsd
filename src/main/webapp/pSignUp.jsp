<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" href="css/signup.css" />
</head>
<img alt="Main" src="images/main.jpg">
<body>
<div class="signUpWindow">
		<div class="signUpHeader">Sign Up</div>
		<div class="signUpContent">

			<div style="display: block; padding-top: 20px;">firstname*</div>
			<input type="text" id="T1" />

			<div style="display: block; padding-top: 20px;">lastname*</div>
			<input type="text" id="T2" />
			
			
			<div style="display: block; padding-top: 20px;">Phone Number*</div>
			<input type="text" id="T3" />
			

			<div style="display: block; padding-top: 20px;">email*</div>
			<input type="text" id="T4" />
			
			<div style="display: block; padding-top: 20px;">username*</div>
			<input type="text" id="T5" />

			<div style="display: block; padding-top: 20px;">password*</div>
			<input type="password" id="T6" />

			<button class="signUpButton" onClick="signup()">Register</button>
			

		</div>
	</div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">

function signup() {
    // Get values from the form fields
    const firstname = document.getElementById("T1").value;
    const lastname = document.getElementById("T2").value;
    const mobileno = document.getElementById("T3").value;
    const email = document.getElementById("T4").value;
    const username = document.getElementById("T5").value;
    const password = document.getElementById("T6").value;

    // Prepare data to send in the request
    const formData = new URLSearchParams();
    formData.append("T1", firstname);
    formData.append("T2", lastname);
    formData.append("T3", mobileno);
    formData.append("T4", email);
    formData.append("T5", username);
    formData.append("T6", password);

    // Send AJAX POST request to /insertuser
    fetch("/insertp", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: formData
    })
    .then(response => {
        if (response.ok) {
            window.location.href = "/pHome.jsp"; // Redirect to home on success
        } else {
            console.error("Failed to register user.");
        }
    })
    .catch(error => console.error("Error:", error));
}


</script>
</html>