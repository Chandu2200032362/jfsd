<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<style>
/* General Styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form Container */
div {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
}

/* Table Styling */
table {
    width: 100%;
    border-spacing: 10px;
}

/* Table Row and Label Styling */
td {
    font-size: 14px;
    color: #333;
}

/* Input Field Styling */
input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    color: #333;
    box-sizing: border-box;
}

input[type="text"]:focus {
    border-color: #4CAF50;
    outline: none;
}

/* Button Styling */
button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049;
}

/* Success and Error Message Styling */
label {
    display: block;
    margin-top: 10px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
}

/* Responsive Design */
@media (max-width: 600px) {
    div {
        padding: 15px;
    }
    td {
        font-size: 12px;
    }
    input[type="text"] {
        font-size: 12px;
    }
    button {
        font-size: 12px;
    }
    label {
        font-size: 12px;
    }
}
</style>
</head>
<body>
<div>
    <table>
        <tr>
            <td>Email*</td>
            <td><input type="text" id="T1" /></td>
        </tr>
        <tr>
            <td>First Name*</td>
            <td><input type="text" id="T2" /></td>
        </tr>
        <tr>
            <td>Last Name*</td>
            <td><input type="text" id="T3" /></td>
        </tr>
        <tr>
            <td>Mobile No*</td>
            <td><input type="text" id="T4" /></td>
        </tr>
        <tr>
            <td>Password*</td>
            <td><input type="text" id="T5" /></td>
        </tr>
        <tr>
            <td>Username*</td>
            <td><input type="text" id="T6" /></td>
        </tr>
        <tr>
            <td></td>
            <td><button onclick="update()">Update</button></td>
        </tr>
        <tr>
            <td></td>
            <td><label id="L1"></label></td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    function update() {
        var T1 = document.getElementById("T1");
        var T2 = document.getElementById("T2");
        var T3 = document.getElementById("T3");
        var T4 = document.getElementById("T4");
        var T5 = document.getElementById("T5");
        var T6 = document.getElementById("T6");
        var L1 = document.getElementById("L1");

        // Validation
        if (!T1.value || !T1.value.includes("@")) {
            L1.style.color = "red";
            L1.innerHTML = "Please enter a valid email address.";
            return;
        }
        if (!T2.value) {
            L1.style.color = "red";
            L1.innerHTML = "First name cannot be empty.";
            return;
        }
        if (!T3.value) {
            L1.style.color = "red";
            L1.innerHTML = "Last name cannot be empty.";
            return;
        }
        if (!T4.value) {
            L1.style.color = "red";
            L1.innerHTML = "Mobile number cannot be empty.";
            return;
        }
        if (!T5.value) {
            L1.style.color = "red";
            L1.innerHTML = "Password cannot be empty.";
            return;
        }
        if (!T6.value) {
            L1.style.color = "red";
            L1.innerHTML = "Username cannot be empty.";
            return;
        }

        // If validation passes, proceed to API call
        var data = JSON.stringify({
            email: T1.value,
            firstname: T2.value,
            lastname: T3.value,
            mobileno: T4.value,
            password: T5.value,
            username: T6.value
        });

        var url = "http://localhost:8081/politician/update";
        callApi("PUT", url, data, updateHandler);
    }

    function updateHandler(response) {
        var L1 = document.getElementById("L1");
        L1.style.color = "green";
        L1.innerHTML = "Update successful!";
    }
</script>
</body>
</html>
