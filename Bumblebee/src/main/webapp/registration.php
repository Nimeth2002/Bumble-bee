<?php
$serverName = "DESKTOP-K5LPK1E\SQLEXPRESS";
$connectionInfo = array( "Database"=>"bee", "UID"=>"sa", "PWD"=>"nimeth2002");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
     echo "Connection established.<br />";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}

$customerid = $_POST['customer_id'];
$fullname = $_POST['fullname'];
$dateofbirth = $_POST['Date of Birth'];
$loanbalance = $_POST['loan_balance'];
$usedamount = $_POST['used_amount'];
$installementplan = $_POST['installement_plan'];

$sql = "INSERT INTO Customer_Registration (customer id, full name, date of birth, loan balance,used amount,installement plan ) VALUES (?, ?,?,?,?,?)";
$params = array($username, $password);
$stmt = sqlsrv_query($conn, $sql, $params);

if( $stmt === false ) {
     die( print_r( sqlsrv_errors(), true));
} else {
     echo "Registration successful!";
}

sqlsrv_close($conn);
?>
