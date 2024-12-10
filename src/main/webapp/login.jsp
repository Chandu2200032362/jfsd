<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/logincss.css">
</head>
<body>
    <header>
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
       <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
     </header>

    <!-- Header Section -->
    <header class="heading">
        <h1>Citizens Rights</h1>
    </header>
    <div class="login">
    	<button class="custom-btn btn-3" onclick="window.location.href='AdminLogin.jsp'"><span>Admim</span></button>
        <button class="custom-btn btn-3" onclick="window.location.href='citizenLogin.jsp'"><span>Citizen</span></button>
        <button class="custom-btn btn-3" onclick="window.location.href='politianLogin.jsp'">Politian</button>
    </div>

    <!-- Main Content Section -->
    <main class="container">
        <!-- Importance of Citizens' Rights Section -->
        <section class="importance-section">
            <h2>The Importance of Citizens' Rights</h2>
            <p>Citizens' rights are essential for ensuring freedom, justice, and equality within society. They empower individuals to participate actively in governance and safeguard against discrimination and injustice.</p>
        </section>

        <!-- Stories and Images Section -->
        <section class="stories-section section2">
            <div class="story">
                <img src="./images/loginimg1.jpg" alt="Story Image 1" class="img1">
                <h3>John's Fight for Voting Rights</h3>
                <p>John led a campaign to increase voter awareness in his community, ensuring that all citizens were informed of their right to vote and participate in elections.</p>
            </div>

            <div class="story">
                <img src="./images/loginimg2.jpg" alt="Story Image 2" class="img2">
                <h3>Sarah's Journey to Equality</h3>
                <p>Sarah used her rights to challenge workplace discrimination, paving the way for fair treatment and equal opportunities for women in her industry.</p>
            </div>
        </section>

        <!-- Footer Section -->
        <footer class="footer">
            <p>&copy; 2024 Citizens Rights Portal</p>
        </footer>
    </main>

</body>
</html>
