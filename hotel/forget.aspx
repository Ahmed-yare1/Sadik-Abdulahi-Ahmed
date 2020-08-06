<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forget.aspx.vb" Inherits="hotel.forget"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <%--<html lang="en" class="no-js">--%> <!--<![endif]-->
    <head runat="server">
    <title>Hotel Baanadir</title>

   <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"/> 
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
        /*margin-bottom: 1;*/
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
                                <h1> Sign up </h1>
                                <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:Label ></p> 
                                <p> 
                                    <label for="users" class="youmail" data-icon="u">Username</label>
                                    <asp:TextBox ID="Txtuname" runat="server" required="required" type="text" placeholder="Enter Username"></asp:TextBox>
                                </p>

                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e">Email</label>
                                    <asp:TextBox ID="Txtemail" runat="server" required="required" type="email" placeholder="Enter Email"></asp:TextBox>
                                </p>


                                <p class="signin button">
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="FORGET"/>
                                     
									<%--<input type="submit" value="Sign up"/>--%> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="loginpage.aspx" class="to_register"> Go and log in </a>
								</p>
                               
                               
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                               
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>