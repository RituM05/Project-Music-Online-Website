<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="Beng.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><hr /><h2>BENGALI SONGS</h2><br /><hr />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <table>
    <tr><td><strong>SONG UPLOAD :</strong></td><td>
            <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" />
            <asp:Button ID="Button1" runat="server" Text="UPLOAD" BorderStyle="Solid" 
                BorderWidth="3px" Font-Bold="True" BorderColor="Black" Width="80px" 
                    onclick="Button1_Click" /></td></tr>
            <tr><td></td><td>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" 
        DataSourceID="SqlDataSource2" Width="555px" AllowSorting="True" CellSpacing="2" 
                    Height="333px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="SONGS" HeaderText="SONGS" SortExpression="SONGS" />
            <asp:BoundField DataField="SIZE" HeaderText="SIZE" SortExpression="SIZE" />
           
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                </td></tr>
        </table><hr />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [BengSong]"></asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

