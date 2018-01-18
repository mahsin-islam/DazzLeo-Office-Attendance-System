<?php 
	if(isset($_POST['login'])){
		$username = $_POST['username'];
		$password = MD5($_POST['password']);
		
		$dbConn = mysql_connect('localhost','root','NFjKHdg43');
		mysql_select_db("db_attendance");
		
		$query = mysql_query("SELECT * FROM `users` WHERE `username` = '$username' AND `password` = '$password' ",$dbConn) or die(mysql_error());

		
		if($query){
			$row = mysql_fetch_object($query);
			
			if(isset($row->empID)){
				@session_start();
				$_SESSION['empID'] =$row->empID;
				$_SESSION['username'] =$row->username;
			}else{
				header('Location: login.php?login=error');
			}
			
		}else{
			header('Location: login.php?login=error');
		}
		
	}
	header('Location: index.php?login=success');
?>