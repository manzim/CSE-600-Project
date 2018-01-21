<?php

?>
<html>
<head>
<meta charset="utf-8">
<title>match day 1</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
	require('db.php');
    //form submit er por, insert value in database.
    if (isset($_POST['team'])){
		 $team = $_POST['team'];
		 $point = $_POST['point'];
                                  
		   
		   
	$point = stripslashes($point);
		$point = mysql_real_escape_string($point);
        $team = mysql_real_escape_string($team);
		
		$query = "INSERT into match_table (team,match_1) VALUES ('$team','$point')";
	$result = mysql_query($query);
	
        if($result){
            echo "<div class='form'><h3>You've updated the points successfully.</h3><br/></div>";
	} }
    else{
	



?>


<div class="form">
<h1>update box</h1>
<form name="registration" action="" method="post">
<input type="text" name="team" placeholder="team" required />
<input type="text" name="point" placeholder="point" required />

<input type="submit" name="submit" value="Submit" />
</form>




</div>




<?php }

	
 ?>

<table border='1'>
<th>Team</th><th>Point</th>
	<?PHP
		$query = "select * from match_table";
		$result = mysql_query($query);
	while($row = mysql_fetch_assoc($result)) {
		echo "<tr>";
		echo "<td>" . $row['team'] . "</td>";
		echo "<td>" . $row['match_1'] . "</td>";
		echo "</tr>";
	}
	?>
</table>


</body>
</html>
