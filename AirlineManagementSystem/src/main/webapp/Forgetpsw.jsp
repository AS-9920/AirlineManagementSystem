<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
<link rel="stylesheet" href="bootstrap.min.css">
<style>
    .tbl{
        margin-left: 15%;
    }
    .btn{
	background-color: black;
	color:white;
	margin-right: 10px;
	margin: 05px;
}
h1:hover{
    font-size: 50px;
    color: white;
}
</style>
</head>
<body style="background-color: rgb(238, 228, 228);">
<div class="container">
    <br><br><br>
    <h1>Forget Password</h1>
    <hr>
    <form name="frm" method="post" action="Forgetps">
    <table class="tbl">
        <tr>
            <td>UserId</td>
            <td><input type="text" name="uid" class="form-control" required autocomplete="off" autofocus></td>
        </tr>
        <tr>
            <td>Security Question</td>
            <td>
            <select name="sq" class="form-control">
                <option value="Name of your primary school?">Name of your primary school?</option>
                <option value="Your favourite tourist destination?">Name of your favourite tourist destination?</option>
                <option value="Your favourite filmstar?">Name of your favourite film star?</option>
            </select></td>
        </tr>
        <tr>
            <td>Answer</td>
            <td><input type="text" name="ans" class="form-control" required autocomplete="off"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Forget" class="btn">
            <input type="reset" value="Reset" class="btn">
            <a href="index.jsp"><input type="button" value="Home" class="btn"></label></a></td>
        </tr>
    </table></form>
</div>
</body>
</html>