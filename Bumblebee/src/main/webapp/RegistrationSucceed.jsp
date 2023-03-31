<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Success</title>
	<style>
		/* Style for the body */
		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
			font-size: 16px;
			line-height: 1.5;
			color: #333;
			margin: 0;
			padding: 0;
		}

		/* Style for the container */
		.container {
			max-width: 600px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			border-radius: 5px;
			margin-top: 50px;
		}

		/* Style for the success message */
		h1 {
			font-size: 36px;
			margin-bottom: 20px;
			color: #4CAF50;
			text-align: center;
		}

		/* Style for the success icon */
		.success-icon {
			display: block;
			margin: 0 auto;
			width: 100px;
			height: 100px;
			background-color: #4CAF50;
			color: #fff;
			border-radius: 50%;
			font-size: 48px;
			line-height: 100px;
			text-align: center;
			margin-bottom: 20px;
		}

		/* Style for the success message */
		p {
			font-size: 18px;
			text-align: center;
			margin-bottom: 20px;
		}

		/* Style for the continue button */
		.continue-button {
			display: block;
			margin: 0 auto;
			padding: 10px 20px;
			background-color: #4CAF50;
			color: #fff;
			font-size: 18px;
			text-align: center;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s;
		}

		.continue-button:hover {
			background-color: #2E8B57;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="success-icon">&#10004;</div>
		<h1>Registration Successful</h1>
		<a href="index.jsp" class="continue-button">Continue</a>
	</div>
</body>
</html>
    