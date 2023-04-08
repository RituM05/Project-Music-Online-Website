<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Ad_signin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image: url(images/body-bg.gif)"><center style="background-image: url('images/req.png')">
        <h2 style="color:#999966; font-family:'Century Schoolbook'; font-size:xx-large; font-weight: 900;">
            ADMIN SIGN IN</h2>
    
       <div style="width:462px; ">
       <table>
       <tr><td style="height:20px"></td></tr>
       <tr><td style="width:100px;color:White; font-size:large">User Name:</td><td>
           <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="25px"/><br />
           </td>
           <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  </td></tr>
       
       <tr><td style="width:100px;color:White; font-size:large">Password:</td><td> <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="25px" TextMode="Password"/><br />
       <br /></td>
       <td>  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  </tr>
       <tr><td style="height:20px"></td></tr>
       <tr><td></td></tr>
       <tr><td style="width:150px;"></td><td style="width:200px"><asp:Label ID="labelinfo1" runat="server"/></td></tr>
       <tr><td style="width:20px;"></td><td>
           <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
               BorderStyle="Solid" BorderWidth="3px" Width="86px" /></td></tr>
        <tr><td></td></tr>
       <tr><td></td></tr>
       <tr><td></td></tr>
       </table>
       
     </div>
       </center>      
       </div>
    
        
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

