<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .input-group {
            margin-bottom: 15px;
        }
        
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #3e8e41;
        }
        
        footer {
            text-align: center;
            padding: 20px;
            background-color: #ccc;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form method="post" action="Successlogin.jsp" id="login-form" onsubmit="return validateForm()">
            <h2>Login</h2>
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <button type="submit" class="btn">Login</button>
                 <a href="customerregistration.jsp">Click here to go to Register Customer details</a>
	</div>
        </form>
    </div>
    <script>
        function validateForm() {
            var username = document.getElementById("admin").value;
            var password = document.getElementById("admin123").value;

            if (username == "" || password == "") {
                alert("Please fill in all fields.");
                return false;
            }
            else {
                window.location.href = "Successlogin.jsp";
            }
        }
    </script>
</body>
</html>

