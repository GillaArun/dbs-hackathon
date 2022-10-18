<?php 
session_start();
$conn = mysqli_connect("localhost","root","1234","railway");
if(!$conn){  
	echo "<script type='text/javascript'>alert('Database failed');</script>";
  	die('Could not connect: '.mysqli_connect_error());  
}
if (isset($_POST['submit']))
{
$t_no = $_POST['t_no'];

$sql = "Delete from trains where t_no = `$t_no`";
if(mysqli_query($conn, $sql))
{  
	$message = "Train data inserted successfully";
}
else
{  
	$message = "Something went wrong"; 
}
	echo "<script type='text/javascript'>alert('$message');</script>";
}
?>