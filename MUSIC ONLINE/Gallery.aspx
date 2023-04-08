<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><h1 style="background-color: #C0C0C0; color: #000000;">Image Gallery</h1></center>
<br /><hr /><br />
    <asp:DataList ID="DataList1" runat="server" CellSpacing="10" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="3px" 
                Height="189px" ImageUrl='<%# Eval("path") %>' Width="216px" />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

