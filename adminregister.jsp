<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="index.css">  
    <title>signup</title>
</head>
<body style="background-color:grey;">
    <jsp:include page="header.jsp" />
    <center>
        <div style="margin-top:20%;">
        <h1>Admin Signup Page</h1><br> 
    
        <div class="login"> 
        <form action="adminsignup" method="POST">
            <table>
            <tr>
                <td><label for="email">Enter Your Email :</label></td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td><label for="pass">Enter Your Password :</label></td>
                <td><input type="password" name="pass"></td>
            </tr>
            <tr>
                <td><label for="pass">Enter phone number :</label></td>
                <td><input type="text" name="phno"></td>
            </tr>
            <tr>
                <td><label for="name">Enter Your Name :</label></td>
                <td><input type="text" name="name">
            </td>
            </tr>
            
            </table>
            <input type="submit" value="Signup">
        </form>
    </div>  
</center> 
</body>
</html>