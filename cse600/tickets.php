<?php

?>
<html>
<head>
<meta charset="utf-8">
<title>Registration</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
	$connection = mysql_connect('localhost', 'root', '');
if (!$connection){
    die("Database Connection Failed" . mysql_error());
}
$select_db = mysql_select_db('point_table');
if (!$select_db){
    die("Database Selection Failed" . mysql_error());
}

    // form submit er por db te value send
    if (isset($_POST['username'])){
		 $username = $_POST['username'];
		  $mobile_no = $_POST['mobile_no'];
		   $email = $_POST['email'];
		    $payment = $_POST['payment'];
			
	$username = stripslashes($username);
		$username = mysql_real_escape_string($username);
		$mobile_no = stripslashes($mobile_no);
		$mobile_no = mysql_real_escape_string($mobile_no);
		$payment = stripslashes($payment);
		$payment = mysql_real_escape_string($payment);
        $email = stripslashes($email);
		$email = mysql_real_escape_string($email);
				
          $query=mysql_query("select * from tickets where username='$username'");
		  if(mysql_num_rows($query)>0){
			  echo $username . "already exists";
		  }
	else{
		$query = "INSERT into tickets (username,mobile_no,payment,email) VALUES ('$username','$mobile_no','$payment', '$email')";
	$result = mysql_query($query);
	
        if($result){
            echo "<div class='form'><h3>Your request has been saved successfully.</h3><br/>
			</div>";
		}
		else{
			echo "<h1>Error: " . mysql_error() . "</h1>";
		} 
	}
    }
?>
<div class="form">
<h1>Registration</h1>
<form name="registration" action="" method="post">
<input type="text" name="username" placeholder="Username" required /><br/>
<input type="mobile_no" name="mobile_no" placeholder="mobile_no" required />     <br/>
<input type="payment" name="payment" placeholder="payment by bKash/UCL/DBBL" required /> <br/>
<input type="email" name="email" placeholder="email" required />
<input type="submit" name="submit" value="Register" />
</form>
</div>

<table border='1'>
<th>Username</th><th>Mobile no</th><th>Email</th>
	<?PHP
		$query = "select * from tickets";
		$result = mysql_query($query);
	while($row = mysql_fetch_assoc($result)) {
		echo "<tr>";
		echo "<td>" . $row['username'] . "</td>";
		echo "<td>" . $row['mobile_no'] . "</td>";
		echo "<td>" . $row['email'] . "</td>";
		echo "</tr>";
	}
	?>
</table>

</body>
</html>
