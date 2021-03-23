<?php

include_once('config.php');

if(isset($_POST['submit'])){
  $sname = $_POST['sname'];	
  $saddress = $_POST['saddress'];
  $sclass = $_POST['sclass'];
  $sphone = $_POST['sphone'];

   $sql2 = "INSERT INTO nstudent(sname,saddress,sclass,sphone) VALUES('$sname', '$saddress', '$sclass', '$sphone')";
  

  $result2 = mysqli_query($conn,$sql2)or die("query failed");

  if($result2)
  {
  	echo "data inserted successfully";

    header("Location:view.php");
  }	


}






?>







<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta  name="viewport" content="width=device-width,initial-scale=1.0">
	<title></title>
</head>
<body>
 <div class="container">
 	<form action="" method="POST">
 	<div class="form-control">
 	<label>Name</label>
 	<input type="text" name="sname" class="form-control">	
 		
 	</div>	
 	<div class="form-control">
 	<label>Address

 	</label>
 	<input type="text" name="saddress" class="form-control">	
 		
 	</div>	

 	<div class="form-control">
 	<label>Class</label>


 	<select name="sclass">
 		<option>Select Class</option>
 		<?php
 	$sql = "SELECT * FROM studentclass";
 	$result = mysqli_query($conn,$sql)or die("query failed");
 	while($row= mysqli_fetch_assoc($result)){

 	   ?>
 			<option value="<?php echo $row['cid']; ?>" name="class"><?php echo $row['cname']; ?></option>
 		<?php

     	}

 		?>
 	</select>
 	</div>

 	<div class="form-control">
 	<label>Phone

 	</label>
 	<input type="text" name="sphone" class="form-control">	
 		
 	</div>

 	<div class="form-control">
 	
 	<input type="submit" name="submit" value="Insert">	
 		
 	</div>		


 		
 	</form>
 </div>	

</body>
</html>