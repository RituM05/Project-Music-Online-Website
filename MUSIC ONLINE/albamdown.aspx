<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="albamdown.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
        <br />
       <CENTER><table><tr><td><hr /><h2 style="font-family: DokChampa; color: #993333">DOWNLOAD ALBUM SONGS</h2><hr /></td></tr>
           <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
           <tr><td></td></tr>
           <tr><td>
           <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
               BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
               GridLines="None" Height="355px" Width="655px" AutoGenerateColumns="False" 
                   DataKeyNames="id" DataSourceID="SqlDataSource1">
               <AlternatingRowStyle BackColor="PaleGoldenrod" />
               
               <FooterStyle BackColor="Tan" />
               <HeaderStyle BackColor="Tan" Font-Bold="True" />
               <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                   HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
               <SortedAscendingCellStyle BackColor="#FAFAE7" />
               <SortedAscendingHeaderStyle BackColor="#DAC09E" />
               <SortedDescendingCellStyle BackColor="#E1DB9C" />
               <SortedDescendingHeaderStyle BackColor="#C2A47B" />
               <Columns>
                   <asp:BoundField DataField="SONGS" HeaderText="SONGS" SortExpression="SONGS" />
                   <asp:BoundField DataField="SIZE" HeaderText="SIZE" SortExpression="SIZE" />
                   <asp:HyperLinkField DataNavigateUrlFields="SONGS" 
                       DataNavigateUrlFormatString="~/audio/{0}" DataTextField="SONGS" 
                       HeaderText="PLAY" />
               </Columns>
           </asp:GridView>
           
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   DeleteCommand="DELETE FROM [ALBUM] WHERE [id] = @id" 
                   InsertCommand="INSERT INTO [ALBUM] ([SONGS], [SIZE]) VALUES (@SONGS, @SIZE)" 
                   SelectCommand="SELECT * FROM [ALBUM]" 
                   UpdateCommand="UPDATE [ALBUM] SET [SONGS] = @SONGS, [SIZE] = @SIZE WHERE [id] = @id">
                   <DeleteParameters>
                       <asp:Parameter Name="id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="SONGS" Type="String" />
                       <asp:Parameter Name="SIZE" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="SONGS" Type="String" />
                       <asp:Parameter Name="SIZE" Type="Int32" />
                       <asp:Parameter Name="id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           
           </td></tr>
       </table>
       </CENTER>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

