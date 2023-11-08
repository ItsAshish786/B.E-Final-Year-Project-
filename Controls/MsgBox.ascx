<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MsgBox.ascx.cs" Inherits="Controls_MsgBox" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnClose"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none"  Font-Bold="True" BackColor="#0033CC">

   <p style="color: #FFFFFF; font-size: large; font-weight: bold">
       <asp:Literal ID="Literal1" runat="server"></asp:Literal></p> 
     

    <p style="background-color: #FFFFFF">
        <br />

     <asp:Literal ID="Literal2" runat="server"></asp:Literal><br /><br />
    <asp:Button ID="btnClose" runat="server" Text="ok" Width="50px" Font-Size="Small" Height="30px" />
    <br /> 
</p>
   
</asp:Panel>