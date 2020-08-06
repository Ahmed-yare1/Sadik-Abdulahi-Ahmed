<%@ page Language="VB" AutoEventWireup="false" CodeBehind="loginpage.aspx.vb" Inherits="hotel.loginpage" %>
<!DOCTYPE html>


<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head runat="server">

   <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Hotel Banadir</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
<style type="text/css">
    .auto-style1 {
        height: 48px;
    }
    .auto-style3 {
        width: 100%;
        height: 100%;
        position: relative;
        text-align: center;
        left: 0px;
        top: 0px;
        /*margin-bottom: 1px;*/
    }
</style>

  
     
    </head>
    <body>
        <div class="auto-style3">
            <!-- Codrops top bar -->
            <!--/ Codrops top bar -->
            <section>				
                <div id="container_demo" class="auto-style1" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <br />
                    <br />
                    <br />
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form id="form1" runat="server">
                                <h1>Log in</h1>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </p> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >username </label>
                                    <asp:TextBox ID="Txtuname" runat="server" placeholder="Enter Username"></asp:TextBox>
                            
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">password </label>
                                    <asp:TextBox ID="Txtpass" runat="server" type="password" placeholder="Enter Password"></asp:TextBox>
                                    
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" />
								</p>
                                <p class="login button"> 
                                    <asp:Button ID="Login" runat="server" Text="Login"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Cancel" runat="server" Text="Cancel" />
                                <p class="change_link">
									<a href="#toregister" class="to_register">Forget Password</a>                            <p class="change_link">
									<a href="forget.aspx" class="to_register">Forget Password</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									Not a member yet ?
									<a href="Sign_Up.aspx" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        </div>
                </div>  
            </section>
        </div>
    </body>
</html>