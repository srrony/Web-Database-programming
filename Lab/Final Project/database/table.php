<?php
include("config.php");
//------product info----------

$tbl_prodinfo = "CREATE TABLE IF NOT EXISTS prodinfo(

							prod_id INT NOT NULL,
							PRIMARY KEY(prod_id) ,
							name VARCHAR(50) NOT NULL,
							img_name VARCHAR(50) NOT NULL,
							img_path VARCHAR(50) NOT NULL ,
							img_type VARCHAR(50) NOT NULL ,
							price INT(10) NOT NULL,
							prodesc VARCHAR(500) NOT NULL

							)";


$query = mysqli_query($myconn, $tbl_prodinfo);

if ($query === TRUE) {
	echo "<h3>Product  INFORMATI table created OK :) </h3>";
} else {
	echo "<h3>Product INFORMAT table NOT created :( </h3>";
}



//----------------customer information -------------------

$tbl_custinfo = "CREATE TABLE IF NOT EXISTS custinfo(

							cu_id INT(10) NOT NULL auto_increment,
							PRIMARY KEY(cu_id) ,
							name VARCHAR(20) NOT NULL,
							email VARCHAR(20) NOT NULL,
							password VARCHAR(50) NOT NULL,
							gender ENUM('m','f','o') NOT NULL,
							country VARCHAR(50) NOT NULL

							)";


$query = mysqli_query($myconn, $tbl_custinfo);

if ($query === TRUE) {
	echo "<h3>customer  INFORMATI table created OK :) </h3>";
} else {
	echo "<h3>customer INFORMAT table NOT created :( </h3>";
}

//--------------------order item-----------
$tbl_cuorder = "CREATE TABLE IF NOT EXISTS cuorder(

							id INT(10) NOT NULL auto_increment ,
							PRIMARY KEY(id),
							date DATETIME NOT NULL,
							cu_id INT(10) NOT NULL,
							prod_id INT(10) NOT NULL,
							quantity INT(10) NOT NULL,
							FOREIGN KEY(cu_id) REFERENCES custinfo(cu_id),
							FOREIGN KEY(prod_id) REFERENCES prodinfo(prod_id)

							)";


$query = mysqli_query($myconn, $tbl_cuorder);

if ($query === TRUE) {
	echo "<h3>Order  INFORMATI table created OK :) </h3>";
} else {
	echo "<h3>Order INFORMAT table NOT created :( </h3>";
}


//----------order list-------------
$tbl_orderlist = "CREATE TABLE IF NOT EXISTS orderlist(

							id INT(10) NOT NULL auto_increment ,
							PRIMARY KEY(id),
							cu_id INT(10) NOT NULL,
							date DATETIME NOT NULL,
							total INT(10) NOT NULL ,
							paid INT(10) NOT NULL,
							dues INT(10) NOT NULL,
							FOREIGN KEY(cu_id) REFERENCES custinfo(cu_id)
							)";


$query = mysqli_query($myconn, $tbl_orderlist);

if ($query === TRUE) {
	echo "<h3>Order list table created OK :) </h3>";
} else {
	echo "<h3>Order list table NOT created :( </h3>";
}

