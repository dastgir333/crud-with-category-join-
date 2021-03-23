<?php
include_once('config.php');

$sid = $_GET['id'];

$sql = "DELETE FROM nstudent WHERE sid='$sid'";
$result = mysqli_query($conn,$sql)or die("query failed");

if($result){

	echo "<script>alert('Data deleted Successfully!');
		       location.href='view.php'

		</script>";
}


?>
