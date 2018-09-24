<?php 
 
// function triggred by index.php file then It is running 
function printff() {

	require 'db.php';// including db connectivity in called function
	if ($con) {

		$qry = "select *from sce_department";
		$result = @mysqli_query($con, $qry);
		while ($row = @mysqli_fetch_assoc($result)) {
			echo "Name -".$row['dept_name'].", <br>id -".$row['dept_id']."<br>";// printing the result
		}
	}
}
?>