

  

















<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta  name="viewport" content="width=device-width,initial-scale=1.0">
	<title></title>
</head>
<body>
 <div class="container">
 	
     <?php

     include_once('config.php');

      $sid = $_GET['id'];



   $sql = "SELECT * FROM nstudent WHERE sid='$sid'";
  

  $result = mysqli_query($conn,$sql)or die("query failed");

  while($row=mysqli_fetch_assoc($result)){


  ?>
   <form action="" method="POST">
 	<div class="form-group">
 	<label>Name</label>
 	<input type="hidden" name="sid" value="<?php echo $row['sid']; ?>">
 	<input type="text" name="sname" value="<?php echo $row['sname']; ?>" class="form-control">	
 		
 	</div>	
 	<div class="form-group">
 	<label>Address

 	</label>
 	<input type="text" name="saddress" value="<?php echo $row['saddress']; ?>" class="form-control">	
 		
 	</div>	

 	<div class="form-group">
 	<label>Class</label>


 	<select name="sclass">
 		<option>Select Class</option>
 		<?php
 	$sql2 = "SELECT * FROM studentclass";
 	$result2 = mysqli_query($conn,$sql2)or die("query failed");
 	while($row2= mysqli_fetch_assoc($result2)){
 		if($row['sclass']==$row2['cid']){
 			$select = "selected";
 		}else{
 			$select = "";
 		}
 		  

 	   ?>
 			<option <?php echo $select; ?>  value="<?php echo $row2['cid']; ?>" name="class"><?php echo $row2['cname']; ?></option>
 		<?php

     	}

 		?>
 	</select>
 	</div>

 	<div class="form-control">
 	<label>Phone

 	</label>
 	<input type="text" name="sphone" value="<?php echo $row['saddress']; ?>" class="form-control">	
 		
 	</div>

 	<div class="form-control">
 	
 	<input type="submit" name="update" value="update">	
 		
 	</div>		


 		
 	</form>

 	<?php

    }


 	?>
 </div>	

</body>
</html>


<?php

if(isset($_POST['update'])){

	$id =    $_POST['sid'];
	$name =  $_POST['sname'];
	$address = $_POST['saddress'];
	$class = $_POST['sclass'];
	$phone = $_POST['sphone'];

	 $sql3 = "UPDATE nstudent SET sname='$name', saddress='$address', sclass='$class', sphone='$phone' WHERE sid='$id'";
	
	$result3 = mysqli_query($conn,$sql3)or die("query failed");

	if($result3){

		echo "<script>alert('Data updated Successfully!');
		       location.href='view.php'

		</script>";
	}


}






?>