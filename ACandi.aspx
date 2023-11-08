<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="ACandi.aspx.cs" Inherits="ACandi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Candidate Section</h1>
    <hr />
    <div style="text-align: left">
      
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            CName:
            <asp:TextBox ID="CNameTextBox" runat="server" Text='<%# Bind("CName") %>' />
            <br />
            AadharNo:
            <asp:TextBox ID="AadharNoTextBox" runat="server" Text='<%# Bind("AadharNo") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Education:
            <asp:TextBox ID="EducationTextBox" runat="server" Text='<%# Bind("Education") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
            <br />
            profession:
            <asp:TextBox ID="professionTextBox" runat="server" Text='<%# Bind("profession") %>' />
            <br />
            IsParticipate:
            <asp:TextBox ID="IsParticipateTextBox" runat="server" Text='<%# Bind("IsParticipate") %>' />
            <br />
            PartyId:
            <asp:TextBox ID="PartyIdTextBox" runat="server" Text='<%# Bind("PartyId") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Candidate Name:<br />
            <asp:TextBox ID="CNameTextBox" runat="server" Text='<%# Bind("CName") %>' required/>
            <br /><br />
            Aadhar No:<br />
            <asp:TextBox ID="AadharNoTextBox" TextMode="Phone" runat="server" Text='<%# Bind("AadharNo") %>' required/>
            <br /><br />
            Mobile:<br />
            <asp:TextBox ID="MobileTextBox" TextMode="Phone" runat="server" Text='<%# Bind("Mobile") %>' required/>
            <br /><br />
            Education:
            <asp:TextBox ID="EducationTextBox" runat="server" Text='<%# Bind("Education") %>' required/>
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" TextMode="Date" runat="server" Text='<%# Bind("DOB") %>' required/>
            <br />
            Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' required/>
            <br />
            profession:
            <asp:TextBox ID="professionTextBox" runat="server" Text='<%# Bind("profession") %>' required/>
            <br />
            Before participate in election:
            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("IsParticipate") %>' Width="100%" Height="40px">
             <asp:ListItem Value="YES">YES</asp:ListItem>
             <asp:ListItem Value="NO">NO</asp:ListItem>
         </asp:DropDownList>
           
            <br /><br />
            Select Party:
              <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("PartyId") %>' DataSourceID="SqlDataSource2" DataTextField="PartyName" DataValueField="Id" Height="40px" Width="100%"></asp:DropDownList>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" SelectCommand="SELECT [Id], [PartyName] FROM [PartyTable]"></asp:SqlDataSource>
            
            <br /> <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            CName:
            <asp:Label ID="CNameLabel" runat="server" Text='<%# Bind("CName") %>' />
            <br />
            AadharNo:
            <asp:Label ID="AadharNoLabel" runat="server" Text='<%# Bind("AadharNo") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Education:
            <asp:Label ID="EducationLabel" runat="server" Text='<%# Bind("Education") %>' />
            <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            Category:
            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>' />
            <br />
            profession:
            <asp:Label ID="professionLabel" runat="server" Text='<%# Bind("profession") %>' />
            <br />
            IsParticipate:
            <asp:Label ID="IsParticipateLabel" runat="server" Text='<%# Bind("IsParticipate") %>' />
            <br />
            PartyId:
            <asp:Label ID="PartyIdLabel" runat="server" Text='<%# Bind("PartyId") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" DeleteCommand="DELETE FROM [CandidateTable] WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([AadharNo] = @original_AadharNo) OR ([AadharNo] IS NULL AND @original_AadharNo IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Education] = @original_Education) OR ([Education] IS NULL AND @original_Education IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([profession] = @original_profession) OR ([profession] IS NULL AND @original_profession IS NULL)) AND (([IsParticipate] = @original_IsParticipate) OR ([IsParticipate] IS NULL AND @original_IsParticipate IS NULL)) AND (([PartyId] = @original_PartyId) OR ([PartyId] IS NULL AND @original_PartyId IS NULL))" InsertCommand="INSERT INTO [CandidateTable] ([CName], [AadharNo], [Mobile], [Education], [DOB], [Category], [profession], [IsParticipate], [PartyId]) VALUES (@CName, @AadharNo, @Mobile, @Education, @DOB, @Category, @profession, @IsParticipate, @PartyId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CandidateTable]" UpdateCommand="UPDATE [CandidateTable] SET [CName] = @CName, [AadharNo] = @AadharNo, [Mobile] = @Mobile, [Education] = @Education, [DOB] = @DOB, [Category] = @Category, [profession] = @profession, [IsParticipate] = @IsParticipate, [PartyId] = @PartyId WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([AadharNo] = @original_AadharNo) OR ([AadharNo] IS NULL AND @original_AadharNo IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Education] = @original_Education) OR ([Education] IS NULL AND @original_Education IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([profession] = @original_profession) OR ([profession] IS NULL AND @original_profession IS NULL)) AND (([IsParticipate] = @original_IsParticipate) OR ([IsParticipate] IS NULL AND @original_IsParticipate IS NULL)) AND (([PartyId] = @original_PartyId) OR ([PartyId] IS NULL AND @original_PartyId IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_CName" Type="String" />
            <asp:Parameter Name="original_AadharNo" Type="String" />
            <asp:Parameter Name="original_Mobile" Type="String" />
            <asp:Parameter Name="original_Education" Type="String" />
            <asp:Parameter Name="original_DOB" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_profession" Type="String" />
            <asp:Parameter Name="original_IsParticipate" Type="Int32" />
            <asp:Parameter Name="original_PartyId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="AadharNo" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Education" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="profession" Type="String" />
            <asp:Parameter Name="IsParticipate" Type="String" />
            <asp:Parameter Name="PartyId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="AadharNo" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Education" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="profession" Type="String" />
            <asp:Parameter Name="IsParticipate" Type="Int32" />
            <asp:Parameter Name="PartyId" Type="Int32" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_CName" Type="String" />
            <asp:Parameter Name="original_AadharNo" Type="String" />
            <asp:Parameter Name="original_Mobile" Type="String" />
            <asp:Parameter Name="original_Education" Type="String" />
            <asp:Parameter Name="original_DOB" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_profession" Type="String" />
            <asp:Parameter Name="original_IsParticipate" Type="String" />
            <asp:Parameter Name="original_PartyId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
         <br /> <br />
        <h2>Delete Candidate</h2>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CName" HeaderText="CandidateName" SortExpression="CName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EVMDBConnectionString %>" DeleteCommand="DELETE FROM [CandidateTable] WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL))" InsertCommand="INSERT INTO [CandidateTable] ([CName]) VALUES (@CName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [CName] FROM [CandidateTable]" UpdateCommand="UPDATE [CandidateTable] SET [CName] = @CName WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_CName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CName" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_CName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

