<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="AddParty.aspx.cs" Inherits="admin_AddParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <h2>Add New Party</h2>
    <hr /> 
   
    <div style="text-align: left">
    <div class="group">
      <input id="txtName" runat="server" type="text" pattern="[A-Za-z]{3,15}" title="Enter valid name only minimum 3 letters" required/>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enter Party Name</label>
    </div>

    <div class="group">

     <textarea id="txtDetalis" runat="server" placeholder="Enter Decription" cols="30" rows="5" required></textarea>
    </div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                Upload Logo
                <br />
                <asp:FileUpload ID="FileUploadControl" runat="server" /> 
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <br />
                <asp:Image ID="Image1" runat="server" Height="131px" Width="141px" ImageUrl="~/images/noImage.jpeg" />
                <br />
                <br />
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="Button1" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
        <br />
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        <br />
        <br />
    </div>
</asp:Content>

