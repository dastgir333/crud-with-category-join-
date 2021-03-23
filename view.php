<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<div class="container">

<div class="row">
	<a href="index.php"><h1>Add Records</h1></a>
	<div class="col-md-12">

		<table border="1" width="100%">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Address</th>
					<th>Class</th>
					<th>Phone</th>
					<th>Edit</th>
					<th>Delete</th>
					

				</tr>
			</thead>

			<tbody>
		<?php 
		include_once('config.php');
		 $sql = "SELECT * FROM nstudent JOIN studentclass WHERE nstudent.sclass = studentclass.cid ";
	
		$result = mysqli_query($conn,$sql)or die("query failed");
		if(mysqli_num_rows($result)>0){
		while($row = mysqli_fetch_assoc($result)){         
		
		?>		

				<tr>
					<th><?php echo $row['sid']; ?></th>
					<th><?php echo $row['sname']; ?></th>
					<th><?php echo $row['saddress']; ?></th>
					<th><?php echo $row['cname']; ?></th>
					<th><?php echo $row['sphone']; ?></th>
					<th><a href="edit.php?id=<?php echo $row['sid']; ?>">Edit</a></th>
					<th><a href="delete.php?id=<?php echo $row['sid']; ?>" onclick="return Confirmation()">Delete</a></th>
					

				</tr>

				<?php

			}
              }else{

              	echo "There is no Data";
              }

				?>
				

			</tbody>
		</table>
		

	</div>
</div>	
	

</div>	

<script type="text/javascript">
	function Confirmation(){
		return confirm("Are You Sure To Delete!")
	}
</script>

</body>
</html>