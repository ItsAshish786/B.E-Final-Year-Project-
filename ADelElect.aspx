<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="ADelElect.aspx.cs" Inherits="ADelElect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>Delete Election Details</h2>
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="EName" HeaderText="Election_Name" SortExpression="EName" />
            <asp:BoundField DataField="EDate" HeaderText="Date" SortExpression="EDate" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [EName], [EDate] FROM [ElectionTable]" DeleteCommand="DELETE FROM [ElectionTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ElectionTable] ([EName], [EDate]) VALUES (@EName, @EDate)" UpdateCommand="UPDATE [ElectionTable] SET [EName] = @EName, [EDate] = @EDate WHERE [Id] = @Id">
         <DeleteParameters>
             <asp:Parameter Name="Id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="EName" Type="String" />
             <asp:Parameter Name="EDate" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="EName" Type="String" />
             <asp:Parameter Name="EDate" Type="String" />
             <asp:Parameter Name="Id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

