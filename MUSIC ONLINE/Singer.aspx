<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Singer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><table><tr><td><hr /><h2 style="font-family: DokChampa; color: #993333">DOWNLOAD SINGER SONGS</h2><hr /></td></tr>
    <tr><td height="25px" width="35px"></td></tr>
    <tr><td>
    <asp:GridView ID="GridView1" 
        runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" 
            Height="333px" Width="650px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Song" HeaderText="Song" SortExpression="Song" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:ImageField DataAlternateTextField="Singer" DataImageUrlField="Singer" 
                DataImageUrlFormatString="~/images/{0}" HeaderText="Singer">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="Song" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="Song" 
                HeaderText="PLAY" />
            
        </Columns>
        <EmptyDataTemplate>
            <asp:Image ID="Image1" runat="server" Height="74px" Width="86px" />
        </EmptyDataTemplate>
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
    </td></tr>
    </table></center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Singer] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Singer] ([Singer], [Song], [Size]) VALUES (@Singer, @Song, @Size)" 
        SelectCommand="SELECT * FROM [Singer]" 
        UpdateCommand="UPDATE [Singer] SET [Singer] = @Singer, [Song] = @Song, [Size] = @Size WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Singer" Type="String" />
            <asp:Parameter Name="Song" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Singer" Type="String" />
            <asp:Parameter Name="Song" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

