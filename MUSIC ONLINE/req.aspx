<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="req.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <div style="background-image: url(images/body-bg.gif); color:White;">  <center style="background-image: url('images/req.png')">
        <h2 style="color:#999966; font-family:'Century Schoolbook'; font-size:xx-large; font-weight: 900;">
            REQUEST A SONG</h2>
    
    
    <asp:Label ID="Label9" runat="server"></asp:Label>
        <table style="width:717px; font-size:medium">
         <tr>
                    <td>SONGS TYPE </td>
                    <td>
         </td>
                    <td>
                        <asp:DropDownList ID="songtype" runat="server">
                            <asp:ListItem> </asp:ListItem>
                            <asp:ListItem>BENGALI</asp:ListItem>
                            <asp:ListItem>ENGLISH</asp:ListItem>
                            <asp:ListItem>HINDI</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="songtype" ErrorMessage="You need to a Song Type" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </td>
         </tr>
         <tr>
                 <td>SONGS NAME</td>
                 <td>
         </td>
                 <td> <asp:TextBox ID="songname" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="songname" ErrorMessage="You need to type a Song Name" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
         </tr>
         <tr>
         <td>SINGERS NAME</td>
         <td>
         </td>
         <td>
         <asp:TextBox ID="singername" runat="server"></asp:TextBox>
         </td>
         <td>
                

                </td>
         </tr>
                 <tr>
         <td>
             <asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:ListItem>SELECT</asp:ListItem>
                 <asp:ListItem>MOVIE</asp:ListItem>
                 <asp:ListItem>ALBUM</asp:ListItem>
                 <asp:ListItem>BAND</asp:ListItem>
             </asp:DropDownList>
         </td>
         <td>
         </td>
         
         <td>
         
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         
         </td>
         <td>
            
         </tr>
         
         <tr><td></td><td style="height:15px"></td></tr>
         <tr>
         <td>
         </td>
         <td></td>
         <td>
             <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
         </td>
         </tr>
         <tr><td style="height:25px;"></td></tr>
         </table></center>
        </div>
</asp:Content>
