<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="userHome.aspx.cs" Inherits="userHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
      table, th, td 
      {
        border: 1px solid Yellow;
      }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Up comming election</h1>
    <hr />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
   
</asp:Content>

