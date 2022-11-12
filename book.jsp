<!DOCTYPE html>
<html lang="en">

<style>
    .signup-form{
    height:350px;
    width:600px;
    margin-top:11%;
    margin-left:29%;
    background-color: black;
}
.Signup-head{
    padding:8px;
    color: crimson;
    background-color: black;
}
.signup-content .radio{
    margin:10px 10px;
}
.signup-content2 .input{
    width:400px;
    padding:10px;
    margin:10px;
    color:crimson;
}
.signup-content2 .tarikh{
    margin:10px;
    padding:10px;
    color:#fff;
}
.signup-content2  .person{
    padding:10px;
    margin:10px;
    color:crimson;
}
.signup-content2 .travel{
    margin:20px 20px;
}
.signup-content2 .travel2{
    padding:5px;
}
.signup-content2 .submit-btn{
    border:none;
    outline:none;
    width:200px;
    padding:10px;
    margin-left:200px;
    background-color: crimson;
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body style="background-color:grey;">
<jsp:include page="header.jsp" />
    <form action="book" method="POST">

        <div class="signup-form">

<<<<<<< HEAD
            <div class="Signup-head bg-warning">
                <h1>Reserve Your Bike</h1>
=======
            <div class="Signup-head">
                <h1>ENTER BOOKING DETAILS</h1>
>>>>>>> 7730723d5070076be18e51a430b01bc3ead2802e
            </div>
            <div class="signup-content2">
                <input type="text" name="from" placeholder="From" class="input bg-dark">
                <input type="text" name="to" placeholder="To" class="input bg-dark"><br>
            

            <label class="text-white" style="margin-left:10px;">Depart</label>
            <input type="date" name="depart" class="tarikh bg-dark text-white">
            <label class="text-white" style="margin-left:10px;">Return</label>
            <input type="date" name="return" class="tarikh bg-dark">
            <input type="submit" value="Proceed" class="submit-btn">
        </div>
    </form>
</body>
</html>