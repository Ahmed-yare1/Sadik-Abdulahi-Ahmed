<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUp.aspx.vb" Inherits="hotel.SignUp" %>
 
<!DOCTYPE html>
<html>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
    <title>Hotel Baanadir</title>

   <style>
body {font-family: Arial, Helvetica, sans-serif;
      /*vertical-align:central;
      align-content:center;
      background-color:dimgrey;
       width:550px;
      height:650px;
      margin-left:30%;*/
       background-color:dimgrey;

}
* {box-sizing: border-box}
h2{
    background-color:white;
    margin-bottom:0px;
}
form {border: 3px solid #f1f1f1;
      margin-top:0px;
      background-color:white;

}

/* Full-width input fields */
input[type=text], input[type=password],input[type=date] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    /*display: inline-block;*/
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    /*outline: none;*/
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    /*background-color: #f44336;*/
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 30px;
    border: 20px;
    cursor: pointer;
    width: 100px;
    /*opacity: 0.9;*/
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
   
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
       .auto-style2 {
           padding: 16px;
           height: 919px;
       }
   </style>
    </head>
<body>

    <form id="form1" runat="server" style="margin-left:25%;margin-right:25%">
  <div class="auto-style2" runat="server">
    <h1>&nbsp; Sign Up</h1>
    <p>Please fill in this form to create an account. </p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
          &nbsp;</p>
    <hr>

     <label for="fname"><b>First Name</b></label>
     <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtfname" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
      
    <asp:TextBox ID="txtfname" placeholder="Enter First Name" runat="server" required="required"></asp:TextBox>
    <label for="fname"><b>Last Name</b></label>
    <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtlname" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="txtlname" placeholder="Enter Last Name" runat="server" required="required"></asp:TextBox>

      
  
    <label for="email"><b>Username</b></label>
   <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="txtmail" placeholder="Enter Username" runat="server" required="required"></asp:TextBox>

     <label for="fname"><b>Date Of Birth</b></label>
    <%-- <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtbirth" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
      <asp:TextBox ID="txtbirth" placeholder="Enter Date Of Birth" runat="server" required="required" type="date"></asp:TextBox>

    <label for="psw"><b>Password</b></label>
      <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="txtpass"></asp:RequiredFieldValidator>--%>
    &nbsp;<asp:TextBox ID="txtpass" placeholder="Enter Username" runat="server" type="password" required="required"> </asp:TextBox>

   
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      <br />
      
      <asp:Button ID="Button1" runat="server" Text="Create" class="cancelbtn" Width="238px"/>  
      <asp:Button ID="Button2" runat="server" Text="Cancel" style="margin-left:30px" class="cancelbtn" Height="45px" Width="238px"/>
      <br />
      <br />
      <br />
 <%--   </div>--%>
  </div>
    </form>

</body>

</html>