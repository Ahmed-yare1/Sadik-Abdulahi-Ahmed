<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ROOM.aspx.vb" Inherits="hotel.ROOM" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
<title>BANADIR HOTEL
<%--<link href="slideshow.css" rel="stylesheet" />--%>
</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="Main.css" rel="stylesheet" />
        
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

    #myBtn:hover {
        background-color: darkorange;
    }
    </style>
<style>
body {font-family: Arial, Helvetica, sans-serif;
      /*vertical-align:central;
     
      background-color:dimgrey;
       width:550px;
      height:650px;
      margin-left:30%;*/
       align-content:center;
       
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
input[type=text], input[type=password],input[type=date],input[type=email] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password],input[type=date],input[type=email]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
.lbutton {
     background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 18%;
    opacity: 0.9;
}

.lbutton:hover {
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
    opacity: 0.9;
}
.cancelbtn:hover {
        background-color: darkorange;
    }

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 20%;
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
</style>


<!-- vvv-->


        </head>
<body> 
     <center>

    <div class="nav">
         <div style="font-size:medium; text-align:left; color:black;background-color:cadetblue;width:95%;height:50px;margin-top:20px">



    </div>
        <img src="photo/hotel.jpg" style="width:95%; margin-top:0px" />
    </div>
<!-- Navbar -->
    
<div class="nav" style="width:95%">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
     <a href="HOME.ASPX" class="w3-bar-item w3-button w3-padding-large">HOME</a>
<div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">USERS<i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="Sign_Up.aspx" class="w3-bar-item w3-button">CREATE USER</a>
        <a href="loginpage.aspx" class="w3-bar-item w3-button">LOG OUT</a>
      </div>
    </div>
      <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">RESERVATION <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="ROOM.aspx" class="w3-bar-item w3-button">BOOKING ROOMS</a>
        <a href="RESTARAUNT.aspx" class="w3-bar-item w3-button">RESTAURANT&nbsp;</a>
        <a href="HALLS.aspx" class="w3-bar-item w3-button">HALLS</a>
        <a href="CAFFETERIA.aspx.aspx" class="w3-bar-item w3-button">CAFETERIA</a>
       

      </div>
    </div>
    <a href="GALLERY.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">GALLERY</a>
    <a href="HOME.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT US</a>
    <a href="CONTACT.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT US</a>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">BAND</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>

        <!-- The Band Section -->
  <div class="" >
  <%--<div class="container">--%>
  <form id="form1" runat="server" style="text-align:left;margin-top:0px;color:black; width:95%; margin-top:0px" class="container" >
    <h1>ROOM REGISTRATION</h1>
      <img src="photo/double%20bed%20room.jpg" / style="height:250px;width:390px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="photo/one%20bedroom.jpg" style="height:250px;width:380px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="photo/Waterfront%20Guestroom%20Double%20Double%20View%20RB0814%20CRPD1600x760.jpg"style="height:250px;width:390px"/>
    
    <p>Please fill in this form to create an account.</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
      </p>
    <hr/>

    <label for="fname"><b>UserID</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TxtID" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="TxtID" runat="server" placeholder="Enter UserID" required="required"> </asp:TextBox>

    <label for="fname"><b>First Name</b></label>
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="Txtfname" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtfname" runat="server" placeholder="Enter First Name" required="required"> </asp:TextBox>

    <label for="fname"><b>Last Name</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="Txtlname" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtlname" runat="server" placeholder="Enter Last Name" required="required"> </asp:TextBox>

    <label for="room type"><b>Room Type</b></label> 
    <asp:DropDownList ID="Droproomtype" runat="server" style="width: 100%; padding: 15px;margin: 5px 0 22px 0; display: inline-block;border: none;background: #f1f1f1">
          <asp:ListItem Value="1">Single Room-One Bed</asp:ListItem>
          <asp:ListItem Value="2">Married Room</asp:ListItem>
          <asp:ListItem Value="3">Dulexe Bed Room</asp:ListItem>
          <asp:ListItem Value="4">Family Room-Two Beds</asp:ListItem>
          <asp:ListItem Value="5">VIP Room-One King Bed</asp:ListItem>
    </asp:DropDownList>
       
    <label for="room want"><b>Rooms You Want</b></label> 
    <asp:DropDownList ID="Droproomswant" runat="server" style="width: 100%; padding: 15px;margin: 5px 0 22px 0; display: inline-block;border: none;background: #f1f1f1">
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
          <asp:ListItem>6</asp:ListItem>
          <asp:ListItem>7</asp:ListItem>
          <asp:ListItem>8</asp:ListItem>
          <asp:ListItem>9</asp:ListItem>
          <asp:ListItem>10</asp:ListItem>
          <asp:ListItem>11</asp:ListItem>
          <asp:ListItem>12</asp:ListItem>
          <asp:ListItem>13</asp:ListItem>
          <asp:ListItem>14</asp:ListItem>
          <asp:ListItem>15</asp:ListItem>
          <asp:ListItem>16</asp:ListItem>
          <asp:ListItem>17</asp:ListItem>
          <asp:ListItem>18</asp:ListItem>
          <asp:ListItem>19</asp:ListItem>
          <asp:ListItem>20</asp:ListItem>
    </asp:DropDownList>
          
    <label for="member"><b>Days You Want</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="Txtdays" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtdays" runat="server" placeholder="Enter Days You Want" required="required"> </asp:TextBox>

    <label for="Checkin"><b>Check In</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="Txtin" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtin" runat="server" placeholder="Enter Check In Date" required="required" type="date"> </asp:TextBox>

    <label for="Checkout"><b>Check Out</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="Txtout" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtout" runat="server" placeholder="Enter Check Out Date" required="required" type="date"> </asp:TextBox>
    
    <label for="member"><b>Member Type</b></label> &nbsp;
     
    <asp:DropDownList ID="Dropmember" runat="server" style="width: 100%; padding: 15px;margin: 5px 0 22px 0; display: inline-block;border: none;background: #f1f1f1">
    <asp:ListItem>New Member</asp:ListItem>
    <asp:ListItem>Customer</asp:ListItem>
    </asp:DropDownList>
       

    <label for="email"><b>Email Address</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="Txtemail" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
   <asp:TextBox ID="Txtemail" placeholder="Enter Email Address" runat="server" required="required" type="email"></asp:TextBox>

    <label for="phone"><b>Phone Number</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="Txtphone" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="Txtphone" placeholder="Enter Phone Number" runat="server" required="required"></asp:TextBox>

    <label for="amount"><b>Amount Depoiset</b></label>&nbsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="Txtamount" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
   <asp:TextBox ID="Txtamount" runat="server" placeholder="Enter Amount Depoiset"> </asp:TextBox>

    <label>
    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"/> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <asp:Button ID="Button1" runat="server" Text="Check Amount" class="cancelbtn" Width="190px" Height="50px"/>  
      <asp:Button ID="Button2" runat="server" Text="Save Data" style="margin-left:30px" class="cancelbtn" Height="50px" Width="190px"/>
      <asp:Button ID="Button4" runat="server" Text="Update Data" style="margin-left:30px" class="cancelbtn" Height="50px" Width="190px"/>
      <asp:Button ID="Button5" runat="server" Text="Delete Data" style="margin-left:30px" class="cancelbtn" Height="50px" Width="190px"/>
      <asp:Button ID="Button6" runat="server" Text="Cancel" style="margin-left:30px" class="cancelbtn" Height="50px" Width="190px"/>
 
        
    <br />
      <br />
      <br />
      <br />
 
       <br />
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical">
           <AlternatingRowStyle BackColor="#DCDCDC" />
           <Columns>
               <asp:CommandField ShowSelectButton="True" />
               <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
               <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
               <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
               <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
               <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
               <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
               <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
               <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
               <asp:BoundField DataField="MemberType" HeaderText="MemberType" SortExpression="MemberType" />
               <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
               <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
               <asp:BoundField DataField="AmountDeposited" HeaderText="AmountDeposited" SortExpression="AmountDeposited" />
           </Columns>
           <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
           <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
           <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
           <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#0000A9" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTEL1ConnectionString %>" ProviderName="<%$ ConnectionStrings:HOTEL1ConnectionString.ProviderName %>" SelectCommand="SELECT [UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited] FROM [Rooms]"></asp:SqlDataSource>
       <br />

       <br />
       <br />

      </form>
  </div>

  
  
 <%-- </div>--%>

       
            <!-- The Tour Section -->

        <!-- start side by side images-->

        <style>
            * {
                box-sizing: border-box;
            }

            .column {
                float: left;
                width: 32.33%;
                padding: 5px;
                background-color: black;
            }

            /* Clearfix (clear floats) */
            .row::after {
                content: "";
                clear: both;
                display: table;
                background-color: black;
            }

            .text1 {
                text-align: end;
                color: aqua;
            }

            .color {
                background-color: black;
                color: aqua;
            }
            </style>
<div class="color" style="margin-top:15px; margin-bottom:1px; width:95%">
<h1>services that fecilities hotel:</h1>

<div class="row">
  <div class="column">
    <img src="photo/double%20bed%20room.jpg" alt="double" style="width:100%; height:250px"/>
  </div>
  <div class="column">
    <img src="photo/pasta.jpg" alt="pasta" style="width:100%;height:250px"/>
    
  </div>
  <div class="column">
    <img src="photo/wedding%20hall.jpg" alt="wedding" style="width:100%;height:250px"/>
      
  </div>
    </div>
    </div>

        <!-- end side by side image-->


<%--</div>
<!-- Add Google Maps -->
<script>
function myMap() {
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>--%>
<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>--%>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="" style="width:95%;height:200px; margin-top:5px;margin-bottom:20px; background-color:dimgray">
  <%--<i class="fa fa-facebook-official w3-hover-opacity"> </i>&nbsp;&nbsp;&nbsp;&nbsp;
  <i class="fa fa-instagram w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;&nbsp;
  <i class="fa fa-twitter w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;&nbsp;--%>
    <br />
    <br />
    <br />

   <p class="w3-medium" style="color:white; font-size:larger">© Copyright 2018. Banadir Hotel. All Rights Reserved.</p>
<%--    <div style="font-size:medium; text-align:center; color:black">
        <i class="fa fa-mobile"> </i>&nbsp;&nbsp; +252615048939
        <i class="fa fa-mobile"> </i>&nbsp;&nbsp; +252615618665 <br />
        <i class="fa fa-envelope"> </i>&nbsp;&nbsp;Zakicad99@gmail.com 
        <i class="fa fa-envelope"> </i>&nbsp;&nbsp; Aghalane@gmail.com
    </div>--%>
      <%--<a href="#"><i class="fa fa-search"></i></a>--%> 
    
   

  
</footer>

<script>
    // Automatic Slideshow - change image every 4 seconds
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 4000);
    }

    // Used to toggle the menu on small screens when clicking on the menu button
    function myFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

    // When the user clicks anywhere outside of the modal, close it
    var modal = document.getElementById('ticketModal');
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</center>

    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>
       



