<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <br />
    <H2>UPLOAD SONGS FILE</H2>
    <p>
       <CENTER> 
           <asp:Label ID="Label1" runat="server"></asp:Label>
       <table><tr><td>
            <asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
            <tr><td></td></tr><tr><td>
                <asp:Button ID="Button1" runat="server" Text="UPLOAD DATA" 
                    onclick="Button1_Click" /></td></tr></table>
                    </CENTER>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

