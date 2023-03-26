<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
<link rel="stylesheet" href="bootstrap.min.css">
<style>
.tbl{
margin-left: 28%;
}
.btn{
    background-color: rgb(100, 21, 21);
    color: white;
}
</style>
</head>
<body style="background-color: rgb(245, 240, 240);">
<div class="container">
<br><br>
<h1 style="font-weight: bold;">NEW USER REGISTRATION</h1>
<hr><br>
<form name="frm" method="post" action="Register">
<table class="tbl">
    <tr>
        <td>UserId</td>
        <td><input type="text" name="uid" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="psw" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>User Name</td>
        <td><input type="text" name="unm" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>Age</td>
        <td><input type="number" name="age" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>Gender</td>
        <td><input type="radio" name="gen" value = " male"> Male
        <input type="radio" name="gen" value = "Female"> Female
        <input type="radio" name="gen" value = "other"> Prefer not to say</td>
    </tr>
        <tr>
        <td>Mobile Number</td>
        <td><input type="number" name="mono" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type="email" name="email" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>City</td>
        <td><input type="text" name="city" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td>Security Question</td>
        <td>
            <select name="sq" class="form-control">
                <option value="Name of your primary school?">Name of your primary school?</option>
                <option value="Your favourite tourist destination?">Name of your favourite tourist destination?</option>
                <option value="Your favourite filmstar?">Name of your favourite film star?</option>
            </select>
        </td>
    </tr>
    <tr>
    	<td>Answer</td>
        <td><input type="text" name="ans" class="form-control" required autocomplete="off"></td>
    </tr>
    <tr>
        <td><input type="submit" value="Register" class="btn">
            <input type="reset" value="Reset" class="btn">
        </td>
    </tr>
</table></form>    
</div>
</body>
</html>