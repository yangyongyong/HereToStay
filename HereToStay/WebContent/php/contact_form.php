<?php
	$emailTo = "email@sitename.com"; // Enter your email for feedbacks here
	
	$headers = "MIME-Version: 1.0\r\n";
	$headers .= "Content-type: text/html; charset=utf-8\r\n";
	$headers .= "From: ".$_GET['Email']."\r\n";
	
	if (!isset($_GET['Subject'])) {
		$subject = "Contact form message"; // Enter your subject here
	} else {
		$subject = $_GET['Subject'];
	}
	$body = "";

	reset($_GET);
	while (list($key, $val) = each($_GET)) {
		$title = ucwords(strtolower($key));
		$body .= "<b>$title:</b> ";
		$body .= $val;
	  	$body .= "<br>";
	}
	  
	$result = mail($emailTo, $subject, $body, $headers);
?>