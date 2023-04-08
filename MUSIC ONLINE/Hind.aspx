<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Hind.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><table>
<tr><td><hr /><h2 style="font-family: DokChampa; color: #993333">DOWNLOAD HINDI SONGS</h2><hr /></td></tr>
<tr><td width="25px" height="25px"></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" 
        Height="333px" Width="555px" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="song" HeaderText="song" SortExpression="song" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:HyperLinkField DataNavigateUrlFields="song" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="song" 
                HeaderText="PLAY" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView></td></tr>
    
    </table>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [hindiSong]" 
        DeleteCommand="DELETE FROM [hindiSong] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [hindiSong] ([song], [size]) VALUES (@song, @size)" 
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
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

