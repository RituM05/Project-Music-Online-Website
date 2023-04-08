<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h1 style="background-color: #C0C0C0; color: #000000;">Image Gallery</h1></center>
<br /><hr /><br />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="3px" 
                Height="134px" ImageUrl='<%# Eval("path") %>' Width="173px" />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

