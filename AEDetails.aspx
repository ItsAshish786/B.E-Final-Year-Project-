<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="AEDetails.aspx.cs" Inherits="AEDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h2>Delete Party Name From Election</h2>
      <hr />
      Select Upcomming Election :
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EName" DataValueField="Id" Height="40px" Width="100%"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT * FROM [ElectionTable] WHERE ([Status] = @Status) ORDER BY [Id] DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

