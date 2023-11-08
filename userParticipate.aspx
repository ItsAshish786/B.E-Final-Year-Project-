<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="userParticipate.aspx.cs" Inherits="userParticipate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      table, th, td 
      {
        border: 1px solid Yellow;
      }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="rc">

    </div>
    <a>Current Election</a>
    <hr />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <hr />
    <br />
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <br />
    <hr />
    <br />
</asp:Content>

