<?php 
session_start();
$conn = mysqli_connect("localhost","root","1234","railway");
if(!$conn){  
	echo "<script type='text/javascript'>alert('Database failed');</script>";
  	die('Could not connect: '.mysqli_connect_error());  
}
$details="The Train detials are";
$sql = "SELECT * FROM train ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
	if($row==NULL)	echo "<script type='text/javascript'>alert('No trains are found');</script>";
	else $details = $row;

	return $details;

?>