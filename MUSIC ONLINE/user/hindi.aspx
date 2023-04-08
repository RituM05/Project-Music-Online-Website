<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="hindi.aspx.cs" Inherits="user_Default" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><br /><hr />
    <h3 style="font-family: DokChampa; color: #993333; font-size: large; font-weight: bold;">UPLOAD &amp; DOWNLOAD HINDI SONGS</h3><hr />
    <asp:Label ID="Label1" runat="server" Font-Size="12pt" ForeColor="#999966"></asp:Label>
    <table>  <tr><td><strong>SONG UPLOAD </strong><tt><asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" /></tt><tt>
        <asp:Button ID="Button1" runat="server" Text="UPLOAD" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" BorderColor="Black" Width="70px" 
                    onclick="Button1_Click" Font-Size="Smaller" /></tt></td></tr>
                  
            
            <tr><td>
                <asp:GridView ID="GridView1" runat="server" Height="333px" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" 
        Width="555px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="song" HeaderText="song" SortExpression="song" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:HyperLinkField DataNavigateUrlFields="song" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="song" 
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
    </asp:GridView></td></tr>
        </table>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [hindiSong] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [hindiSong] ([song], [size]) VALUES (@song, @size)" 
        SelectCommand="SELECT * FROM [hindiSong]" 
        UpdateCommand="UPDATE [hindiSong] SET [song] = @song, [size] = @size WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="song" Type="String" />
                <asp:Parameter Name="size" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="song" Type="String" />
                <asp:Parameter Name="size" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
        <br />
     </center>  
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

