<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="Beng.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center> 
<hr /><h3 style="font-family: DokChampa; color: #993333">UPLOAD &amp; DOWNLOAD BENGALI SONGS</h3><hr />
<table><tr>
            <td><strong>SONG UPLOAD :</strong><asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" />
            
            <asp:Button ID="Button1" runat="server" Text="UPLOAD" BorderStyle="Solid" 
                BorderWidth="3px" Font-Bold="True" BorderColor="Black" Width="80px" 
                    onclick="Button1_Click" /></td></tr>
                    <tr><td></td></tr>
            <tr><td><asp:Label ID="Label1" runat="server" ></asp:Label></td></tr>
    <tr><td></td></tr>
    <td><asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="None" Height="333px" 
            Width="555px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" 
            DataSourceID="SqlDataSource1">
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
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [BengSong] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [BengSong] ([SONGS], [SIZE]) VALUES (@SONGS, @SIZE)" 
            SelectCommand="SELECT * FROM [BengSong]" 
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
    </td></tr>
   </table></center>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

