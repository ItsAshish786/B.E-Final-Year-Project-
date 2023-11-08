<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="AElection.aspx.cs" Inherits="AElection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>Add New Election</h2>
     <hr />
    <div style="text-align: left">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            EName:
            <asp:TextBox ID="ENameTextBox" runat="server" Text='<%# Bind("EName") %>' />
            <br />
            EDetails:
            <asp:TextBox ID="EDetailsTextBox" runat="server" Text='<%# Bind("EDetails") %>' />
            <br />
            EDate:
            <asp:TextBox ID="EDateTextBox" runat="server" Text='<%# Bind("EDate") %>' />
            <br />
            STime:
            <asp:TextBox ID="STimeTextBox" runat="server" Text='<%# Bind("STime") %>' />
            <br />
            ETime:
            <asp:TextBox ID="ETimeTextBox" runat="server" Text='<%# Bind("ETime") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Election Name:
            <asp:TextBox ID="ENameTextBox" runat="server" Text='<%# Bind("EName") %>' required/>
            <br />
            Election Details:
            <asp:TextBox ID="EDetailsTextBox" runat="server" Text='<%# Bind("EDetails") %>' TextMode="MultiLine" cols="50" rows="4" required />
            <br />
            Election Date:
            <asp:TextBox ID="EDateTextBox" runat="server" Text='<%# Bind("EDate") %>' TextMode="Date" required/>
            <br />
            Start Time:
            <asp:TextBox ID="STimeTextBox" runat="server" Text='<%# Bind("STime") %>' TextMode="Time" required/>
            <br />
            End Time:
            <asp:TextBox ID="ETimeTextBox" runat="server" Text='<%# Bind("ETime") %>' TextMode="Time" required/>
            <br />
            
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            EName:
            <asp:Label ID="ENameLabel" runat="server" Text='<%# Bind("EName") %>' />
            <br />
            EDetails:
            <asp:Label ID="EDetailsLabel" runat="server" Text='<%# Bind("EDetails") %>' />
            <br />
            EDate:
            <asp:Label ID="EDateLabel" runat="server" Text='<%# Bind("EDate") %>' />
            <br />
            STime:
            <asp:Label ID="STimeLabel" runat="server" Text='<%# Bind("STime") %>' />
            <br />
            ETime:
            <asp:Label ID="ETimeLabel" runat="server" Text='<%# Bind("ETime") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
     </asp:FormView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" DeleteCommand="DELETE FROM [ElectionTable] WHERE [Id] = @original_Id AND (([EName] = @original_EName) OR ([EName] IS NULL AND @original_EName IS NULL)) AND (([EDetails] = @original_EDetails) OR ([EDetails] IS NULL AND @original_EDetails IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([STime] = @original_STime) OR ([STime] IS NULL AND @original_STime IS NULL)) AND (([ETime] = @original_ETime) OR ([ETime] IS NULL AND @original_ETime IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [ElectionTable] ([EName], [EDetails], [EDate], [STime], [ETime], [Status]) VALUES (@EName, @EDetails, @EDate, @STime, @ETime, 1)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ElectionTable]" UpdateCommand="UPDATE [ElectionTable] SET [EName] = @EName, [EDetails] = @EDetails, [EDate] = @EDate, [STime] = @STime, [ETime] = @ETime, [Status] = @Status WHERE [Id] = @original_Id AND (([EName] = @original_EName) OR ([EName] IS NULL AND @original_EName IS NULL)) AND (([EDetails] = @original_EDetails) OR ([EDetails] IS NULL AND @original_EDetails IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([STime] = @original_STime) OR ([STime] IS NULL AND @original_STime IS NULL)) AND (([ETime] = @original_ETime) OR ([ETime] IS NULL AND @original_ETime IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_EName" Type="String" />
             <asp:Parameter Name="original_EDetails" Type="String" />
             <asp:Parameter Name="original_EDate" Type="String" />
             <asp:Parameter Name="original_STime" Type="String" />
             <asp:Parameter Name="original_ETime" Type="String" />
             <asp:Parameter Name="original_Status" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="EName" Type="String" />
             <asp:Parameter Name="EDetails" Type="String" />
             <asp:Parameter Name="EDate" Type="String" />
             <asp:Parameter Name="STime" Type="String" />
             <asp:Parameter Name="ETime" Type="String" />
             <asp:Parameter Name="Status" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="EName" Type="String" />
             <asp:Parameter Name="EDetails" Type="String" />
             <asp:Parameter Name="EDate" Type="String" />
             <asp:Parameter Name="STime" Type="String" />
             <asp:Parameter Name="ETime" Type="String" />
             <asp:Parameter Name="Status" Type="Int32" />
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_EName" Type="String" />
             <asp:Parameter Name="original_EDetails" Type="String" />
             <asp:Parameter Name="original_EDate" Type="String" />
             <asp:Parameter Name="original_STime" Type="String" />
             <asp:Parameter Name="original_ETime" Type="String" />
             <asp:Parameter Name="original_Status" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
        </div>
</asp:Content>

