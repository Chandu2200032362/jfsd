<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title style="font-weight: bond;">CR</title>
    <style>
        body{
            background-color: #E1E8EE;
        }
        .heading {
            height: 75px;
            background-color:#E1E8EE;
            color: #F67280;
            text-align: center;
            font-size: 35px;
            margin-bottom: 60px;
           
        justify-content: space-between;
        align-items: center;
        width: 100%;
        padding: 10px; 
        }
        header {
        font-size: 2em; /* Customize as needed */
        color: black; /* Match the color you want */
    }

        .container {
            display: flex;
            flex-direction: column;
            align-items: left;
            max-width:500px;
            background-color: #E1E8EE;

            padding: 20px;
            margin: 0 auto;
        }
        .section1 {
            display: flex;
            flex-direction: row;
            align-items: center;
            margin-top: 10%;
            color: #a0d2eb;
            margin-bottom: 20px;
        }
    
     .section1 h2 {
            font-weight: bold;
        }
        .section1 p {
            margin-right: 20px;
        }
        .section1 img {
            height: 200px;
            width: 200px;
            margin-left: 20px;
            border-radius: 10px;
        }
        img:hover
        {
            box-shadow: 5px 5px 5px rgb(8, 190, 214);
        }
      /* From Uiverse.io by ShrinilDhorda */ 
.btn {
  font-size: 1.2rem;
  padding: 1rem 2.5rem;
  border: none;
  outline: none;
  border-radius: 0.4rem;
  cursor: pointer;
  text-transform: uppercase;
  background-color: rgb(14, 14, 26);
  color: rgb(234, 234, 234);
  font-weight: 700;
  transition: 0.6s;
  box-shadow: 0px 0px 60px #1f4c65;
  -webkit-box-reflect: below 10px linear-gradient(to bottom, rgba(0,0,0,0.0), rgba(0,0,0,0.4));
}

.btn:active {
  scale: 0.92;
}

.btn:hover {
  background: rgb(2,29,78);
  background: linear-gradient(270deg, rgba(2, 29, 78, 0.681) 0%, rgba(31, 215, 232, 0.873) 60%);
  color: rgb(4, 4, 38);
}
    h2{
        color: black;
    }
    p{
        color: black;
    }
        .section2{
         display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        gap: 2rem;
       color: #a0d2eb;
        }
        .science, .max, .Ethical, .s2, .footer, footer {
    transition: all 0.3s ease;
}

.science, .max, .Ethical {
    max-width: 200px;
}

.science:hover, .max:hover, .Ethical:hover, .s2:hover, footer:hover {
    box-shadow: 5px 5px 5px rgb(197, 113, 163);
}

.s2 {
    color: #a0d2eb;
    margin-top: 1px;
}

.s2:hover {
    caret-color: red;
}

.img1, .img2 {
    height: 100px;
    width: 100px;
    border-radius: 10px;
}

.img3 {
    height: 150px;
    width: 150px;
    border-radius: 10px;
}

.footer {
    font-weight: bold;
    text-align: center;
}

        .login {
    margin-left: 1250px;
    display: flex;
    align-items: center;
    border-radius: 10px;
}
.login button {
    background-color: black;
    color: #a0d2eb;
    padding: 10px 20px;
    font-size: 1em;
    cursor: pointer;
    border: none; /* removes default border */
    border-radius: 5px; /* rounds the edges */
    transition: background-color 0.3s, transform 0.2s; /* smooth hover effect */
}

.login button:hover {
    background-color: #1a1a1a; /* slightly lighter black for hover */
    transform: scale(1.05); /* scales up slightly */
}

        </style>
</head>
<body>
    <div class="heading">
        <header>CITIZEN'S RIGHTS</header>
    </div>
    <div class="container">
        <div class="section1">
            <div>
                <h2>The rights of every man are diminished when the rights of one man are threatened</h2>
                <p>Citizens' rights are the fundamental freedoms and protections granted to individuals within a society, ensuring equality, justice, and participation in governance. These rights form the cornerstone of democracy, safeguarding personal liberties and promoting social responsibility.</p>
            </div>
            <img src="./images/home1.jpg" alt="CR1">
        </div>
        <div class="button">
            <button class="btn" type="button" onclick="window.location.href='login.jsp'">login</button>
        </div>
    </div>
</body>
<script>
</script>
</html>