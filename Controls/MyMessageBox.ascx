<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyMessageBox.ascx.cs" Inherits="Controls_MyMessageBox" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<style type="text/css">
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
           
        }
    </style>

<!-- ModalPopupExtender -->

<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" 
    CancelControlID="btnClose" BackgroundCssClass="modalBackground" TargetControlID="btnClose">
</cc1:ModalPopupExtender>
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none" Width="80%" Font-Bold="True" BackColor="#FF0066">
     <p style="color: #FFFFFF; font-size: large; font-weight: bold">
       <asp:Literal ID="Literal1" runat="server"></asp:Literal></p> 
     
  
   <div style="background-color: #FFFFFF">
<hr />
  <br />
    
     <asp:Literal ID="Literal2" runat="server"></asp:Literal><br /><br />
    <asp:Button ID="btnClose" runat="server" Text="ok" Width="50px" Font-Size="Small" Height="30px" />
    <br /> 

   </div>
</asp:Panel>
<!-- ModalPopupExtender -->
