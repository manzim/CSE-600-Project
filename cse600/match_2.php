<?php

?>
<html>
<head>
<meta charset="utf-8">
<title>match day 2</title>
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
		
		$query = "UPDATE match_table SET match_2='$point' WHERE match_table.team='$team'";
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




<?php } ?>




</body>
</html>
