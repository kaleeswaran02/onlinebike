<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body{
    margin: 0;
    padding: 0;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}
.bg{
    background: url(elcarito-MHNjEBeLTgw-unsplash.jpg);
    height: 100vh;
    width: 100%;
    position: absolute;
    background-size: cover;
    filter: blur(5px);
    z-index: -1;
    opacity: 0.7;
    filter: brightness(75%);
}
.terms-box{
    max-width: 460px;
    background-color: rgb(83, 83, 83,0.1);
    color: #fff;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    padding: 0 20px;
    height: 400px;
    overflow-y: auto;
    font-size: 14px;
}
.terms-text{
    padding: 0 20px;
    height: 400px;
    overflow-y: auto;
    font-size: 14;
    font-weight: 500;
    color: #111;
}
.terms-text::-webkit-scrollbar{
    width: 2px;
    background-color: #282828;
}
.terms-text::-webkit-scrollbar-thumb{
    background-color: #f1f1f1;
}
.terms-text h2{
    text-transform: uppercase;
}
.terms-text h4{
    font-size: 13px;
    text-align: center;
    padding: 0 40px;
}
.terms-box h4 span{
    color: rgb(245, 68, 68);
    text-transform: uppercase;
}
.buttons{
    display: flex;
    padding: 0 20px;
    justify-content: space-between;
    padding-bottom: 50px;
}
.btn{
    height: 50px;
    width: calc(50% - 6px);
    border: 0;
    border-radius: 6px;
    font-size: 19px;
    font-weight: 500;
    color: #fff;
    transition: .3s linear;
    cursor: pointer;
}
.red-btn{
    background-color: rgb(245, 68, 68);
}
.gray-btn{
    background-color: #282828;
}
.btn:hover{
    opacity: .6;
}
</style>
    <title>Document</title>
</head>

<body>
    <div class="bg"></div>
    <div class="terms-box">
        <div class="terms-text">
            <h2>Terms And Conditions</h2>
            <p>Last Edit:1/12/2022</p>
            <p>Greetings User</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam illo totam facilis in! Laboriosam
                a
                debitis tempore enim voluptas assumenda unde sint dignissimos sit repudiandae temporibus minima illo
                dolore
                cupiditate pariatur nisi odio delectus minus, corrupti quas! Ipsam beatae totam minus culpa
                exercitationem,
                inventore optio quia distinctio eaque perferendis.</p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam illo totam facilis in! Laboriosam
                a
                debitis tempore enim voluptas assumenda unde sint dignissimos sit repudiandae temporibus minima illo
                dolore
                cupiditate pariatur nisi odio delectus minus, corrupti quas! Ipsam beatae totam minus culpa
                exercitationem,
                inventore optio quia distinctio eaque perferendis.</p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam illo totam facilis in! Laboriosam
                a
                debitis tempore enim voluptas assumenda unde sint dignissimos sit repudiandae temporibus minima illo
                dolore
                cupiditate pariatur nisi odio delectus minus, corrupti quas! Ipsam beatae totam minus culpa
                exercitationem,
                inventore optio quia distinctio eaque perferendis.</p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam illo totam facilis in! Laboriosam
                a
                debitis tempore enim voluptas assumenda unde sint dignissimos sit repudiandae temporibus minima illo
                dolore
                cupiditate pariatur nisi odio delectus minus, corrupti quas! Ipsam beatae totam minus culpa
                exercitationem,
                inventore optio quia distinctio eaque perferendis.</p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magnam illo totam facilis in! Laboriosam
                a
                debitis tempore enim voluptas assumenda unde sint dignissimos sit repudiandae temporibus minima illo
                dolore
                cupiditate pariatur nisi odio delectus minus, corrupti quas! Ipsam beatae totam minus culpa
                exercitationem,
                inventore optio quia distinctio eaque perferendis.</p>
       
       <h4>I Agree To The <span> Terms And Conditions</span> And I Read The Privacy Notice</h4>
       <div class="buttons">
           <button onclick="alert2()" class="btn red-btn">Accept</button>
           <button onclick="alert1()" class="btn gray-btn">Decline</button>
       </div>

            </div>
    </div>
</body>
<script>
    function alert1(){
        alert("please accept the terms and conditions");
    }
    function alert2(){
        window.location.href = "index.jsp"
    }
</script>
</html>