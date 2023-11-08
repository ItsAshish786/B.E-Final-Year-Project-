<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="userViewResult.aspx.cs" Inherits="userViewResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>View Election Result</h1>
    <hr />
    Select Election
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EName" DataValueField="Id" Height="40px" Width="100%"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [EName] FROM [ElectionTable] WHERE ([Status] = @Status) ORDER BY [Id] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="View Result" CssClass="btn" OnClick="Button1_Click" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

