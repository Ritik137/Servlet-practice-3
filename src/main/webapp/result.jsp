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
        padding: 40px 50px;
        border-radius: 16px;
        text-align: center;
        width: 340px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.25);
        animation: popIn 0.8s ease-out;
    }

    @keyframes popIn {
        from {
            transform: scale(0.5);
            opacity: 0;
        }
        to {
            transform: scale(1);
            opacity: 1;
        }
    }

    h1 {
        color: #333;
        margin-bottom: 15px;
    }

    .result {
        font-size: 42px;
        font-weight: bold;
        color: #667eea;
        margin: 20px 0;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        text-decoration: none;
        padding: 12px 24px;
        background: #667eea;
        color: white;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    a:hover {
        background: #5a67d8;
        transform: translateY(-3px);
    }
</style>
</head>

<body>

<div class="box">
    <h1>Result</h1>

    <!-- IMPORTANT: attribute name must match controller -->
    <div class="result">
        ${result}
    </div>

    <a href="home.html">Go Back</a>
</div>

</body>
</html>
