<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Registration Form</title>
    <style>
      /* CSS Styles */
      * {
        box-sizing: border-box;
      }
      body {
        font-family: Arial, Helvetica, sans-serif;
      }
      .container {
        width: 50%;
        margin: auto;
      }
      h2 {
        text-align: center;
      }
      input[type="text"], input[type="email"], input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-bottom: 10px;
      }
      input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
      }
      .error {
        color: red;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <form action="Register" method="post" onsubmit="return validateForm()">
        <h2>Registration Form</h2>
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" required>
        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lname" required>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <label for="confirmpassword">Confirm Password</label>
        <input type="password" id="confirmpassword" name="confirmpassword" required>
        <input type="submit" value="Register">
      </form>
    </div>
    <script>
      // JavaScript Validation
      function validateForm() {
        var fname = document.getElementById("fname").value;
        var lname = document.getElementById("lname").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var confirmpassword = document.getElementById("confirmpassword").value;
        var error = document.getElementById("error");

        // Check if all fields are filled out
        if (fname == "" || lname == "" || email == "" || password == "" || confirmpassword == "") {
          error.innerHTML = "Please fill out all fields.";
          return false;
        }

        // Check if passwords match
        if (password != confirmpassword) {
          error.innerHTML = "Passwords do not match.";
          return false;
        }

        // Check if email is valid
        var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!regex.test(email)) {
          error.innerHTML = "Please enter a valid email address.";
          return false;
        }

        // If all validations pass, submit the form
        return true;
      }
    </script>
  </body>
</html>
    