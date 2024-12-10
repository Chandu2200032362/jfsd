<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>
<style>
    /* Include your CSS styles here */
    :root {
        --black: #E1E8EE;
        --red: #F67280;
        --red-dark: #C06C84;
        --orange: #F8B195;
        --yellow: #FECEAB;
        --white: black;
    }

    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: var(--black);
        color: var(--white);
        text-align: center; /* Center align content */
    }

    /* Style for the "Read" button */
    .intro-section {
        margin-top: 20px; /* Space from top of the page */
    }

    .intro-section button {
        background-color: var(--red);
        color: var(--white);
        font-size: 1.2em;
        font-weight: bold;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        transition: background-color 0.3s, transform 0.2s;
    }

    .intro-section button:hover {
        background-color: var(--red-dark);
        transform: scale(1.05);
    }

    /* Style for the table */
    #f {
        margin-top: 250px; /* 250px below the button */
    }

    #f table {
        margin: 0 auto; /* Center the table */
        width: 80%; /* Set table width */
        border-collapse: collapse;
        font-size: 1em;
        background-color: var(--black);
        color: var(--white);
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    #f table th, #f table td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid var(--red-dark);
    }

    #f table th {
        background-color: var(--red-dark);
        color: var(--yellow);
        font-weight: bold;
        text-transform: uppercase;
    }

    #f table tr:nth-child(even) {
        background-color: var(--red);
    }

    #f table tr:hover {
        background-color: var(--red-dark);
        color: var(--yellow);
    }
</style>
</head>
<body>

<div style="width:100%" class="intro-section">

    <table style="width:100%">
        <button onclick="read()" name="read">View All Users</button>
        <tr>
            <td></td>
            <td> <label id="L1"></label> </td>
        </tr>
    </table>

</div>
<div id="f" style="width: 100%"></div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">

function read() {
    var url = "http://localhost:8081/user/read";
    callApi("GET", url, "", readHandler);
}

function readHandler(response) {
    var data = response;
    var table = `<table border="1">
                <tr>
                    <th>EMAIL*</th> 
                    <th>FIRST NAME*</th>
                    <th>LAST NAME*</th>
                    <th>MOBILE NO*</th> 
                    <th>PASSWORD*</th>
                    <th>USERNAME*</th>
                </tr>`; // Template literal for multi-line string
                
    for(var x in data) {
        table += `<tr>
                    <td>` + data[x].email + `</td>
                    <td>` + data[x].firstname + `</td>
                    <td>` + data[x].lastname + `</td>
                    <td>` + data[x].mobileno + `</td>
                    <td>` + data[x].password + `</td>
                    <td>` + data[x].username + `</td>
                  </tr>`;
    }
    table += `</table>`;
    f.innerHTML = table;
}

</script>
</html>
