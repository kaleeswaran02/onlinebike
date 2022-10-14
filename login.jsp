<!DOCTYPE html>    
<html>    
<head>    
    <title>Login Form</title>    
    <link rel="stylesheet" type="text/css" href="index.css">    
</head> 
 <!-- <style>
  body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#6abadeba;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color: #08ffd1;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: rgb(226, 220, 220);  
} 
</style>    -->
<body style="background-color:grey;">  
<jsp:include page="header.jsp" />
<center>
    <div style="margin-top:20%;">
    <h2>Login Page</h2><br> 

    <div class="login">    

      <form name="loginForm" method="POST" action="login">  
        <table>
        <tr>
        <td><label><b>User Name</b></label></td>   
        <td><input type="text" name="email" id="Uname" required></td>    
        </tr>
        <tr>    
        <td><label><b>Password</b></label>    </td>
        <td><input type="Password" name="pass" id="Pass" required></td>    
        </tr>      
        </table>
        <center>
        <input type="submit" value="Submit"/></center>
        <a href="forgot.jsp">Forgot password</a>
    </form>     
</div>  
</center>  
</body>    
</html> 