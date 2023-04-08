<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Eng.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><table>
<tr><td><hr /><h2 style="font-family: DokChampa; color: #993333">DOWNLOAD ENGLISH SONGS</h2><hr /></td></tr>
<tr><td width="25px" height="25px"></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" 
        Height="333px" Width="666px" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Songs" HeaderText="Songs" SortExpression="Songs" />
            <asp:HyperLinkField DataNavigateUrlFields="Songs" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="Name" 
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [EngMP3] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [EngMP3] ([Name], [Songs]) VALUES (@Name, @Songs)" 
        SelectCommand="SELECT * FROM [EngMP3]" 
        UpdateCommand="UPDATE [EngMP3] SET [Name] = @Name, [Songs] = @Songs WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Songs" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Songs" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </td></tr>
   
    </table>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

