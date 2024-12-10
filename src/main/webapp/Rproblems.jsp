<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Problem</title>
</head>
<style>

:root {
    --light-gray: #F8F9FA;
    --light-pink: #F4A6B8;
    --soft-pink: #F2C6D2;
    --dark-pink: #D6A1B1;
    --white: #FFFFFF;
    --font-family: 'Fira Mono', monospace;
}

body {
    font-size: 16px;
    font-family: var(--font-family);
    margin: 0;
    background: var(--light-gray);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    padding: 20px;
}

.update-table {
    background-color: var(--white);
    border: 1px solid var(--soft-pink);
    border-radius: 12px;
    padding: 20px;
    width: 400px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.2s ease-in-out;
    background: linear-gradient(135deg, var(--light-pink) 0%, var(--white) 100%);
}

.update-table:hover {
    transform: translateY(-5px);
}

.input-field {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid var(--dark-pink);
    border-radius: 6px;
    background-color: var(--light-gray);
    color: #333;
    font-size: 1em;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

.input-field:focus {
    border-color: var(--light-pink);
    box-shadow: 0 0 5px 2px rgba(244, 166, 184, 0.5);
    outline: none;
}

.update-button {
    background-color: var(--light-pink);
    color: var(--white);
    border: none;
    padding: 12px 24px;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    font-weight: bold;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.update-button:hover {
    background-color: var(--dark-pink);
    transform: scale(1.05);
}

.update-button:active {
    background-color: var(--dark-pink);
    transform: scale(1);
}

.response-label {
    font-size: 1.2em;
    font-weight: bold;
    color: var(--dark-pink);
    text-align: center;
    margin-top: 15px;
    opacity: 0;
    animation: fadeIn 0.5s forwards;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@media screen and (max-width: 600px) {
    .update-table {
        width: 90%;
        padding: 15px;
    }

    .input-field,
    .update-button {
        font-size: 0.9em;
    }
}


</style>
<body>
<table class="update-table">
    <tr>
        <td>ID*</td>
        <td><input type="text" id="T1" class="input-field" /></td>
    </tr>
    <tr>
        <td>Status*</td>
        <td><input type="text" id="T7" class="input-field" /></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="update-button" onclick="update()">Update</button></td>
    </tr>
    <tr>
        <td></td>
        <td><label id="L1" class="response-label"></label></td>
    </tr>
</table>

<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
function update() {
    var T1 = document.getElementById("T1");
    
    var T7 = document.getElementById("T7");
    
    var data = JSON.stringify({
        id: T1.value,
       
        description : T7.value
    });
    
    // Ensure URL is correct with the parameter formatting
    var url = "http://localhost:8081/problem/updatepro/" + T1.value;
    callApi("PUT", url, data, updateHandler);
}

function updateHandler(response) {
    var L1 = document.getElementById("L1");
    L1.style.color = "green";
    L1.innerHTML = response; // Display the response from the server
}
</script>
</body>
</html>
