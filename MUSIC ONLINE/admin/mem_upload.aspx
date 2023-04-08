<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="mem_upload.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <h2>USER UPLOAD DATA</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
    CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
    ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="SONGS" HeaderText="SONGS" SortExpression="SONGS" />
            <asp:BoundField DataField="SIZE" HeaderText="SIZE" SortExpression="SIZE" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

