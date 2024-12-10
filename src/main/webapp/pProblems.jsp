<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cHome.css">
    <title>Politician - Problems</title>
    <script>
        async function loadData() {
            try {
                const response = await fetch('/problem/getAll');
                const problems = await response.json();
                let content = '<h2>Problems List</h2>';
                if (problems.length > 0) {
                    content += '<ul>';
                    problems.forEach(problem => {
                        content += `
                            <li>
                                <strong>Name:</strong> ${problem.name} <br>
                                <strong>Email:</strong> ${problem.smail} <br>
                                <strong>Problem Type:</strong> ${problem.problem} <br>
                                <strong>Description:</strong> ${problem.description} <br><br>
                            </li>
                        `;
                    });
                    content += '</ul>';
                } else {
                    content += '<p>No problems found.</p>';
                }
                document.getElementById('content').innerHTML = content;
            } catch (error) {
                console.error('Error fetching data:', error);
                document.getElementById('content').innerHTML = '<p>Error loading data.</p>';
            }
        }
    </script>
</head>
<body onload="loadData()">
    <div class="header">
        <header>Welcome Politician</header>
    </div>
    <nav class="menu">
        <ol>
            <li class="menu-item"><a href="pHome.jsp">Home</a></li>
            <li class="menu-item"><a href="pAbout.jsp">About</a></li>
            <li class="menu-item"><a href="pProblems.jsp">Problems</a></li>
            <li class="menu-item"><a href="index.jsp">Logout</a></li>
        </ol>
    </nav>

    <div class="intro-section">Problems</div>
    <div id="content"></div>
    <div id="footer"></div>
</body>
</html>
