<?php
?>
<html>
<head>
<style>
body {
	margin: 0px;
}

* {
  box-sizing: border-box;
}



video { 
  position: absolute;
	top: 0;
  right: 0;
  left: 0;
  min-width: 100%;
  min-height: 100%;
  width: 100%;
  height: 65%;
    z-index: -1;
	object-fit: cover;
	object-position: center;
  margin: 0;
	filter:brightness(65%);
  overflow:hidden;
  }


.header {
	position: absolute;
	border: 1px solid white;
	height: 65%;
	padding: 20px;
	width: 100%;
	margin: 0;
	
}




.div2 {
  height: 100px;
  
  float: left;
  padding: 400px;
  position: fixed;
  margin: 80px;
  
}

h1 {
  color: rgb(29, 94, 225);
}

.button {
  text-align:center;
  text-decoration: none;
  padding: 20px;
  display: inline-block;
  font-size: 16px;
  margin: 4px 100px;
  cursor: pointer;
  border: none;
  background-color: rgb(29, 94, 225);
}

.button1 {
  border-radius: 12px;
  
}

.button1:hover {
  background-color: turquoise;
}
	
</style>
</head>
<body background="4.jpg">

<h1><center>Supply Chain Management Systems</center></h1>

<div class="header">
<video autoplay muted loop>
  <source src="Video.mp4" type="video/mp4">
</video>
</div>
<br/><br/><br/><br/><br/>



<div class="div2">

<button class="button button1" onclick="document.location='SCM/Nor_user/index1.php'">User</button>
<button class="button button1" onclick="document.location='SCM/index.php'">Admin</button>
  


</div>








</body>
</html>
