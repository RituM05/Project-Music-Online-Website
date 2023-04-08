<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Beng.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
<center>
<table>
<tr><td><hr />
    <h2 style="font-family: DokChampa; color: #993333; font-size: x-large; font-weight: bold;">DOWNLOAD BENGALI SONGS</h2><hr /></td></tr>
    
<tr><td height="35px" width="15px"></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" ForeColor="Black" 
        GridLines="None" Height="333px" Width="555px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="SONGS" HeaderText="SONGS" SortExpression="SONGS" />
            <asp:BoundField DataField="SIZE" HeaderText="SIZE" SortExpression="SIZE" />
            <asp:HyperLinkField DataNavigateUrlFields="SONGS" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="SONGS" 
                HeaderText="PLAY" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" 
            BackColor="PaleGoldenrod" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    </td></tr>
    </table>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [BengSong] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [BengSong] ([SONGS], [SIZE]) VALUES (@SONGS, @SIZE)" 
        SelectCommand="SELECT [Id], [SONGS], [SIZE] FROM [BengSong]" 
        UpdateCommand="UPDATE [BengSong] SET [SONGS] = @SONGS, [SIZE] = @SIZE WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SONGS" Type="String" />
            <asp:Parameter Name="SIZE" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SONGS" Type="String" />
            <asp:Parameter Name="SIZE" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
   
    </asp:SqlDataSource>

</asp:Content>

