<?php
session_start();
$username=$_POST['name'];
$password=$_POST['pass'];
$admin="mofiz";
$adminpassword="12345";
if (($username != $admin) || ($password != $adminpassword)) 
{
		echo ': <font color="#FF0000"><a href="../adminlogin.php">Your login information is incorrect</a></font>';
	} 
	else {
		
		$_SESSION['name'] = $username;
         
		header("location:../index.php ?admin= $username");
		
	}

?>
