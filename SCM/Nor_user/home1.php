<?php
    session_start();
    if(!isset($_SESSION['uname'])) {
        header("Location: index1.php");
    }
?>

<html>
    <head>
        <title>Web Application Development</title>
		<link rel="stylesheet" type="text/css" href="home.css">

    </head>
    <body>

		<video autoplay muted loop class="myVideo">
  <source src="../../Video.mp4" type="video/mp4">
</video>

        <h1>Supply Chain Management System</h1>
       <ul>
		<li style="float:right"><a href="logout.php"><b>Logout<?php echo $_SESSION['uname']?></b></a></li>

		<li><a href="home1.php"><b>Home</b></a></td>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><b>News</b></a>
		<div class="dropdown-content">
			
		</div>
	</li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><b>Services</b></a>
		<div class="dropdown-content">
		</div>
	</li>
		<li><a href="contact.php"><b>Contact</b></a></td>
		</ul>
                
            
        
    </body>
</html>