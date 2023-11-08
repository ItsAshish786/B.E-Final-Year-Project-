<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="userMakeVote.aspx.cs" Inherits="userMakeVote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
      table, th, td 
      {
        border: 1px solid Yellow;
      }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Your Vote For</h1>
    <hr />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Make Vote" OnClick="Button1_Click" />
   
      <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <br />
</asp:Content>

