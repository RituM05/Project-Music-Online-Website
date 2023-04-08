<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="msg.aspx.cs" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div style="background-image: url('../images/body-bg.gif'); color:White;"><center><h2 style="color:#999966; font-family:'Century Schoolbook'; font-size:xx-large; font-weight: 900;">
            SEND A MESSAGE TO ADMIN</h2>
    
    <asp:Label ID="Label9" runat="server"></asp:Label>
    <br />
    <br />

        <table width="222">
        <tr><td>NAME</td>
        <td></td>
        <td>
            <asp:TextBox ID="name" runat="server"></asp:TextBox></td></tr>
        
        <tr><td>EMAIL-ID</td>
        <td></td>
        <td><asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox></td></tr>
        <tr><td>MESSAGE</td>
        <td></td>
        <td><asp:TextBox ID="msgbox" runat="server" TextMode="MultiLine" 
                BorderStyle="Dotted" Font-Names="Times New Roman" MaxLength="50"></asp:TextBox></td></tr>
        <tr><td width="15px" height="35px"></td></tr>
        <tr>
        <td></td>
        <td><asp:Button ID="submit" runat="server" Text="SEND" onclick="Button1_Click" 
                Width="150px" /></td></tr>
        <td></td>
        </table>
        </center>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

