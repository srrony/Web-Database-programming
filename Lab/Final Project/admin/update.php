
<?php
$id=$_POST['id'];
$name=$_POST['name'];
$pass=$_POST['pass'];

include_once("../config.php");
$sql="UPDATE custinfo SET cu_id='$id',name='$name',password='$pass' WHERE cu_id='$id'";
$query = mysqli_query($myconn, $sql);
header("location:cuinfo.php");


exit();
?>