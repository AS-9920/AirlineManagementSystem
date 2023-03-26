<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airline Management Application</title>
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<style>
*{
	margin:0;
	padding:0;
}
body{
	font-size: 100%;
	font-family: sans-serif;
}
div,section, ul, li, a, header{
	box-sizing: border-box;
}
header{
	 width: 100%;
    display: flex;
    justify-content: space-between;
    padding: 20px 50px;
    position: fixed;
    z-index: 999;
}
#menu li{
	list-style: none;
	display: inline-block;
	margin: 20px;
}
#menu li a{
	color: black;
    text-decoration: none;
    font-size: 20px;
}
section{
    width: 100%;
    float: left;
    height: 100vh;
    position: relative;
}
#home{
   background-color: whitesmoke;
   background-image: url(images/airplane.avif);
   background-repeat: no-repeat;
   float:right;
}
#about{
    background-color: rgb(225, 248, 206);
}
#services{
    background-color: rgb(247, 214, 214);
}
#contact{
    background-color: rgb(209, 254, 173);
}
h1{
    position: absolute;
    top: 30%;
    left: 35%;
    transform: translate(-50,-50);
}
h2{
	margin-left: 30%;
	margin-top: 20%;
}
.tbl{
	margin-left: 63%;
	margin-top: 230px; 
	top: 20%;
}
.btn{
	background-color: black;
	color:white;
	margin-right: 10px;
	margin: 05px;
}
span{
	float: right;
	margin-right: 80px;
	margin-top: 15px;
}
h3{
	text-align: center;
	margin-top: 12%;
}
p{
    margin-top: 5px;
    padding: 10%;
    text-align: justify;
}
.tbl2{
	margin-left: 25%;
}
</style>
</head>
<body>
<section id="home">
<header>
<a href="#"><img src="images/airplane.avif" alt="airplane" width="20%" height="80%"></a>
<ul id="menu">
<li><a href="#home">Home</a></li>
<li><a href="#about">About us</a></li>
<li><a href="#services">Services</a></li>
<li><a href="#contact">Contact</a></li>
</ul>
</header><div class="container">
<form name="frm" method="post" action="Check">
<table class="tbl">
<tr>
<td><h5>UserId</h5></td>
<td><input type="text" name="uid" class="form-control" autocomplete= "off" required autofocus></td>
</tr>
<tr>
<td><h5>Password</h5></td>
<td><br><input type="password" name="psw" class="form-control" required></td>
</tr>
<tr>	
<td><br><input type="submit" value="Submit" class="btn">
<input type="reset" value="Reset" class="btn"></td>
</tr>
</table></form>
<span><a href="register.jsp">New User ? Register now</a> |   
<a href="Forgetpsw.jsp">Forget Password</a></span>
</div><marquee width="54%" scrollamount="12" direction=right>Adarsh Sharma</marquee>
</section>
<section id="about">
<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit architecto aut, accusamus doloremque repudiandae, nesciunt dolores et tenetur odit excepturi quas optio ipsum illum maiores facilis, aliquid minima. Rem natus nam aperiam, dolorum temporibus dolor voluptatum quia, sint doloremque ex tempora iure dicta nostrum. Dolores quam unde iusto laborum quod ab! Quia hic architecto in nam ut dolorem rerum illum minus sapiente eveniet, perferendis distinctio ad nobis et facilis accusamus. Inventore blanditiis minus at, saepe libero voluptatibus aut iste debitis. Delectus ad deserunt expedita culpa minima autem rerum, repudiandae hic quia! Alias quisquam tempore nostrum unde sed maiores dolor doloribus? Lorem ipsum dolor sit amet consectetur adipisicing elit. Non dignissimos amet, quaerat reprehenderit est sint pariatur laboriosam fugiat asperiores molestias corrupti modi nulla odio placeat, quis nobis accusantium vero dolorem quod adipisci? Quas necessitatibus aliquam accusamus repellat explicabo nemo eius? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Perferendis quaerat optio, nobis impedit alias aperiam neque cum, nesciunt et tempora explicabo, quidem voluptatem doloremque ratione! In soluta quas voluptatibus nam, porro itaque, dolor reprehenderit quo accusamus aperiam ratione qui?</p>
</section>

<section id="services">
<form name="frm" method="post" action="Service">
<h3>Check Flights</h3>
<table class="tbl2">
<tr>
<td>From </td>
<td><input type="text" name="fromtkt" class="form-control" autocomplete="off" required autofocus></td>
<td>To </td>
<td> <input type="text" name="totkt" class="form-control" autocomplete="off" required></td>
</tr>
<tr>
    <td><input type="submit" value="Search" class="btn"></td>
    <td><input type="reset" value="Reset"  class="btn"></td>
</tr>
</table></form>
</section>
<section id="contact">
<h1 style="color:black" marin-top: 20><u> Contact :-</u></h1>
<h2 style="color:black">Name:- Adarsh Sharma<br>
Email:- adarsh9920@gmail.com</h2>
</section>
</body>
</html>