<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
  <head>
    <title>Registration Form</title>
     <link href = "registration.php">
    <style>
       form {
            max-width: 500px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type=text], input[type=date], input[type=number] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
            font-size: 16px;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>
  </head>
  <body>
    <div class="container">
       <form method="post" action="RegistrationSucceed.jsp">
        <label for="customer_id">Customer ID:</label>
        <input type="text" id="customer_id" name="customer_id" required>

        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>

        <label for="loan_balance">Loan Balance:</label>
        <input type="number" id="loan_balance" name="loan_balance" required>

        <label for="used_amount">Used Amount:</label>
        <input type="number" id="used_amount" name="used_amount" required>

        <label for="installement_plan">Installement Plan:</label>
        <select id="installement_plan" name="installement_plan">
            <option value="monthly">Monthly</option>
            <option value="quarterly">Quarterly</option>
            <option value="semi-annually">Semi-Annually</option>
            <option value="annually">Annually</option>
        </select>

        <input type="submit" value="Submit">
    </form>
    </div>
    <script>
    const form = document.querySelector('form');
    form.addEventListener('submit', function(event) {
        const customer_id = document.querySelector('#customer_id');
        const fullname = document.querySelector('#fullname');
        const dob = document.querySelector('#dob');
        const loan_balance = document.querySelector('#loan_balance');
        const used_amount = document.querySelector('#used_amount');

        const errors = [];

        if (customer_id.value.trim() === '') {
            errors.push('Customer ID is required');
        }

        if (fullname.value.trim() === '') {
            errors.push('Full Name is required');
        }

        if (dob.value.trim() === '') {
            errors.push('Date of Birth is required');
        }

        if (loan_balance.value.trim() === '') {
            errors.push('Loan Balance is required');
        }

        if (used_amount.value.trim() === '') {
            errors.push('Used Amount is required');
        }
    </script>
  </body>
</html>
    