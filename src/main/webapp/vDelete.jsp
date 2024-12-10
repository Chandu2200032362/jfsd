<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Politician</title>
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
    background-color: #D9534F; /* Danger red color */
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #C9302C;
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
            <td>Politician ID*</td>
            <td><input type="text" id="T1" /></td>
        </tr>
        <tr>
            <td></td>
            <td><button onclick="del()">Delete</button></td>
        </tr>
        <tr>
            <td></td>
            <td><label id="L1"></label></td>
        </tr>
    </table>
</div>

<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
function del() {
    var T1 = document.getElementById("T1");
    if (!T1.value) {
        document.getElementById("L1").style.color = "red";
        document.getElementById("L1").innerHTML = "Politician ID is required.";
        return;
    }

    var url = "http://localhost:8081/politician/delete?ID=" + T1.value;
    callApi("DELETE", url, "", deleteHandler);
}

function deleteHandler(response) {
    var L1 = document.getElementById("L1");
    if (response.success) {
        L1.style.color = "green";
        L1.innerHTML = "Politician deleted successfully!";
    } else {
        L1.style.color = "red";
        L1.innerHTML = response.msg || "Failed to delete politician.";
    }
}
</script>
</body>
</html>
