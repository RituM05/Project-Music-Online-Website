<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <h1>Image gallery</h1>
    <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" 
        BorderWidth="3px" Font-Bold="True" Height="23px" Width="211px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Upload" BorderStyle="Solid" 
        BorderWidth="3px" Font-Bold="True" onclick="Button1_Click" Width="84px" />
    <hr />
    <asp:DataList ID="DataList1" runat="server" CellPadding="5" RepeatColumns="4">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Solid" 
                BorderWidth="5px" Height="163px" ImageUrl='<%# Eval("path") %>' Width="159px" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("path") %>' onclick="LinkButton1_Click" 
                oncommand="LinkButton1_Command">DELETE</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

