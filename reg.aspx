<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<%@ Register Src="~/Controls/MsgBox.ascx" TagPrefix="uc1" TagName="MsgBox" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/w3pro.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <uc1:MsgBox runat="server" ID="MsgBox" />
          <div style="text-align: left">
    <br />
    <br />
    <div id="rcorners1" style="height: auto">
      <h3>New Registration</h3>
   <hr style="height:1px; background-color: #CCCCCC;"/>
 <br />
   <br />
     <div class="group">
      <input id="txtFirstName" runat="server" type="text" pattern="[A-Za-z]{3,15}" title="Enter 3 to 15 letters name only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter First Name</label>
    </div>
      <div class="group">
      <input id="txtLastName" runat="server" type="text" pattern="[A-Za-z]{3,15}" title="Enter 3 to 15 letters name only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Last Name</label>
    </div>
    <div class="group">
      <input id="txtEnrollment" runat="server" type="tel" pattern="\d{12}" title="Enter 12 digits number only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Aadhar No.</label>
    </div>
    <div class="group">
      <input id="txtEmailId" runat="server" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Enter valid email id only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Email Id</label>
    </div>
    <div class="group">
      <input id="txtMobile" runat="server" type="tel" pattern="\d{10}" title="Enter 10 digits number only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Mobile No.</label>
    </div>

    <div class="group">
      <input id="txtPass1" runat="server" type="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Enter Password (UpperCase, LowerCase and Number) only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Password</label>
    </div>
        <div class="group">
      <input id="txtPass2" runat="server" type="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Enter Password (UpperCase, LowerCase and Number) only" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Confirm Password</label>
    </div>
       
        <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Submit" Height="50px" Font-Bold="True" Font-Size="Medium" Width="200px" OnClick="Button1_Click" BackColor="#333333"/>
        <hr style="height:1px; background-color: #CCCCCC;"/>
        <a href="default.aspx">back to : Login Form</a>
    </div>
         <br />
         <br />
                
            </div>    
    </form>
</body>
</html>
