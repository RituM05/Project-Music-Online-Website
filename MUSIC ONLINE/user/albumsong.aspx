<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="albumsong.aspx.cs" Inherits="user_Default" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><br /><hr />
    <h3 style="font-family: DokChampa; color: #993333; font-size: large; font-weight: bold;">UPLOAD &amp; DOWNLOAD 
        ALBUM SONGS</h3><hr />
    <asp:Label ID="Label1" runat="server" Font-Size="12pt" ForeColor="#999966"></asp:Label>
    <table>  <tr><td><strong>SONG UPLOAD </strong><tt><asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" /></tt><tt>
        <asp:Button ID="Button1" runat="server" Text="UPLOAD" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" BorderColor="Black" Width="70px" 
                    onclick="Button1_Click" Font-Size="Smaller" /></tt></td></tr>
                  
            
            <tr><td>
                <asp:GridView ID="GridView1" runat="server" Height="333px" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="id" 
        DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" 
        Width="555px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="SONGS" HeaderText="SONGS" SortExpression="SONGS" />
            <asp:BoundField DataField="SIZE" HeaderText="SIZE" SortExpression="SIZE" />
            <asp:HyperLinkField DataNavigateUrlFields="SONGS" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="SONGS" 
                HeaderText="Play &amp; Download" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
    
        <br />
     </center>  
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

