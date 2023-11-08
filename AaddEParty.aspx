<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="AaddEParty.aspx.cs" Inherits="AaddEParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <h2>Add Party to Election</h2>
       <hr />
    <div style="text-align: left">
        Select Election
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EName" DataValueField="Id" Height="40px" Width="100%"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [EName] FROM [ElectionTable] ORDER BY [Id] DESC"></asp:SqlDataSource>
        <br /> <br />
       
        Select Party<br />
        <asp:DropDownList ID="DropDownList2" runat="server"  DataTextField="PartyName" DataValueField="Id" Height="40px" Width="100%" AutoPostBack="True" DataSourceID="SqlDataSource3"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [PartyName] FROM [PartyTable]"></asp:SqlDataSource>
         <br /> <br />
        Select Candidate
         <br />
        <asp:DropDownList ID="DropDownList3" runat="server"   Height="40px" Width="100%" DataSourceID="SqlDataSource2" DataTextField="CName" DataValueField="Id" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [CName] FROM [CandidateTable] WHERE ([PartyId] = @PartyId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="PartyId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
    </div>
     <br />
    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

