<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/w3mobile.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="text-align: center">
    <br />
    <br /> 
    <div id="rcorners1">
       <img src="images/login1.png" alt="Avatar" style="width:100px"/>
        <h3>Voting System</h3>
     <%-- <hr style="height:1px; background-color: #CCCCCC;"/>--%>
 <br />
   <br />
    <div class="group">
      <input id="txtEmailId" runat="server" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Enter valid email id only" required/>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Email Id</label>
    </div>

    <div class="group">
       <input id="txtPass" type="password" runat="server"  required/>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Password</label>
    </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" Height="50px" Font-Bold="True" Font-Size="Medium" Width="200px" BackColor="#333333" OnClick="Button1_Click" />
         <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <hr style="height:1px; background-color: #CCCCCC;"/>
        <a href="reg.aspx">Not Account : Create One</a>
    </div>
    </form>
</body>
</html>
