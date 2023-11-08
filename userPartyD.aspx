<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="userPartyD.aspx.cs" Inherits="userPartyD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Party Details Here</h1>
    <hr />
    <div style="text-align: left">
    <asp:DataList runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Width="100%">
        <ItemTemplate>
            <div style="background-color: #FFFFCC; width: 100%;">
            Party Name:<br />
            <asp:Label ID="PartyNameLabel" runat="server" Text='<%# Eval("PartyName") %>' />
            <br /><br />
            Logo:
            <br />
            <img src="uploads/<%# Eval("Logo") %>" width="50px"/>
            <br /><br />
            Description:<br />
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br /><br />
            Registration Date:<br />
            <asp:Label ID="RegDateLabel" runat="server" Text='<%# Eval("RegDate") %>' />

            </div>
           
            <hr />
          
                 
        </ItemTemplate>
    </asp:DataList>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT * FROM [PartyTable]"></asp:SqlDataSource>
</asp:Content>

