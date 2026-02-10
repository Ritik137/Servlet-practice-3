<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #667eea, #764ba2);
        font-family: Arial, sans-serif;
    }

    .box {
        background: white;
        padding: 35px 45px;
        border-radius: 14px;
        text-align: center;
        box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        width: 320px;
    }

    h1 {
        color: #333;
        margin-bottom: 15px;
    }

    .result {
        font-size: 32px;
        font-weight: bold;
        color: #667eea;
        margin: 20px 0;
    }

    a {
        display: inline-block;
        margin-top: 15px;
        text-decoration: none;
        padding: 10px 20px;
        background: #667eea;
        color: white;
        border-radius: 6px;
        font-weight: bold;
    }

    a:hover {
        background: #5a67d8;
    }
</style>

</head>
<body>

    <div class="box">
        <h1>Result</h1>

        <div class="result">
            ${sum}
        </div>

        <a href="home.html">Go Back</a>
    </div>

</body>
</html>
