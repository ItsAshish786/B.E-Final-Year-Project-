<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="AResult.aspx.cs" Inherits="AResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Election Result</h1>
    <hr />
    Select Election
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EName" DataValueField="Id" Height="40px" Width="100%"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [EName] FROM [ElectionTable] WHERE ([Status] = @Status2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Status2" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Declare Result" CssClass="btn" OnClick="Button1_Click" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

