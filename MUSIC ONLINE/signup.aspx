<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image: url(images/body-bg.gif); color:White;"><center style="background-image: url('images/req.png')">
        <h3 style="color:#999966; font-family:'Century Schoolbook'; font-size:xx-large; font-weight: 900;">
            SIGN UP TO BE A MEMBER</h3>

        <h3>
            <asp:Label ID="Label1" runat="server" ForeColor="#FFCC99"></asp:Label></h3>
         <table style="width:562px; font-size:medium ">
         
         <tr>
                    
                    <td align="left" width="55">Name </td>
                    <td>
         </td>
                    <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="**" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </td>
         </tr>
         <tr>
                 <td align="left">Password</td>
                 <td>
         </td>
                 <td> <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="**" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
         </tr>
         <tr>
         <td align="left">Confirm Password</td>
         <td>
         </td>
         <td>
         <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" MaxLength="8" 
                 ontextchanged="txtcpass_TextChanged"></asp:TextBox>
         </td>
         <td>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match" ForeColor="Red" ControlToValidate="txtcpass" ControlToCompare="txtpassword" Text="**"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcpass" ErrorMessage="**" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
         </tr>
                 <tr>
         <td align="left">Gender</td>
         <td>
         </td>
         
         <td>
         <center>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
         </asp:RadioButtonList>
         </center>
         </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                 ErrorMessage="**" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator></td>
         </tr>
         
         <tr>
         <td align="left">AGE</td>
         <td>
         </td>
         <td>
         <asp:TextBox ID="age" runat="server" TextMode="SingleLine"></asp:TextBox>
         </td>
             <td>
                 
            </td>

         </tr>
         <tr>
         <td align="left">Phone Number</td>
         <td>
         </td>
         <td>
         <asp:TextBox ID="phno" runat="server"></asp:TextBox>
         </td>
             <td>
                 
            </td>

         </tr>
          <tr>
         <td align="left">City</td>
         <td>
         </td>
         <td>
         <asp:DropDownList ID="DropDownList1" runat="server">
         <asp:ListItem Text="Select City" Value="select" Selected="True">
        </asp:ListItem>
         <asp:ListItem Text="Ranigunj" Value="Ranigunj">
        </asp:ListItem>
         <asp:ListItem Text="Durgapore" Value="Durgapore">
        </asp:ListItem>
         <asp:ListItem Text="Hugly" Value="Hugly"></asp:ListItem>
             <asp:ListItem>Kolkata</asp:ListItem>
             <asp:ListItem>Channei</asp:ListItem>
             <asp:ListItem>Mumbai</asp:ListItem>
             <asp:ListItem>Delhi</asp:ListItem>
             <asp:ListItem>Pune</asp:ListItem>
             <asp:ListItem>Hydrabad</asp:ListItem>
             <asp:ListItem>Chandigarh</asp:ListItem>
             <asp:ListItem>Ranchi</asp:ListItem>
             <asp:ListItem>Patna</asp:ListItem>
             <asp:ListItem>Midnapore</asp:ListItem>
             <asp:ListItem>Garhbeta</asp:ListItem>
             <asp:ListItem>Jharagram</asp:ListItem>
             <asp:ListItem>Sabang</asp:ListItem>
         </asp:DropDownList>
         </td>
         </tr>
         <tr>
         <td align="left">E-mail id</td>
         <td>
         </td>
         <td>
         <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
         </td>
             <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="**" ForeColor="Red" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>
            
            </td>

         </tr>
         <tr><td></td><td style="height:15px" width="20"></td></tr>
         <tr>
         <td>
         </td>
         <td>
             <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
         </td>
         </tr>
         <tr><td width="25px" height="35px"></td></tr>
         <tr>
         <td></td>
         <td>
             <asp:Label ID="Label2" runat="server" Text="** Are Mandatory" 
                 ForeColor="Red" Font-Size="12pt"></asp:Label>
            
             </td></tr>
         <tr><td style="height:25px;"></td></tr>

         </table></center>
         </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

