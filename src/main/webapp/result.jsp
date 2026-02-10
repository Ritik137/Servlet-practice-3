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
        overflow: hidden;
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
        0% {
            transform: scale(0.5);
            opacity: 0;
        }
        80% {
            transform: scale(1.05);
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }

    h1 {
        color: #333;
        margin-bottom: 15px;
    }

    .result {
        font-size: 40px;
        font-weight: bold;
        color: #667eea;
        margin: 20px 0;
        animation: glow 1.5s infinite alternate;
    }

    @keyframes glow {
        from {
            text-shadow: 0 0 5px rgba(102,126,234,0.4);
        }
        to {
            text-shadow: 0 0 20px rgba(102,126,234,0.9);
        }
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
        transition: all 0.3s ease;
    }

    a:hover {
        background: #5a67d8;
        transform: translateY(-2px);
        box-shadow: 0 8px 15px rgba(0,0,0,0.2);
    }
</style>

</head>
<body>

    <div class="box">
        <h1>Result</h1>

        <div class="result">
            ${result}
        </div>

        <a href="home.html">Go Back</a>
    </div>

</body>
</html>
