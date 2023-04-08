
<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage.master" AutoEventWireup="true" CodeFile="hindi.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><hr /><h2>UPLOAD SINGER SONGS</h2>
    <br /><hr />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <table><tr><td><strong>SINGER IMAGE:</strong></td><td>
            <asp:FileUpload ID="FileUpload1" runat="server" acceped=".jpg" BorderStyle="Solid" /></td></tr>
            <tr><td><strong>SONG UPLOAD :</strong></td><td>
            <asp:FileUpload ID="FileUpload2" runat="server" acceped=".mp3" BorderStyle="Solid" /></td></tr>
            <tr><td></td><td>
            <asp:Button ID="Button1" runat="server" Text="UPLOAD" BorderStyle="Solid" 
                BorderWidth="3px" Font-Bold="True" BorderColor="Black" Width="80px" 
                    onclick="Button1_Click" /></td></tr>
        </table><hr />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
           <%--<asp:TemplateField HeaderText="Singer" SortExpression="Singer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Singer") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" BorderColor="#999966" BorderStyle="Solid" 
                        BorderWidth="5px" Height="40px" ImageAlign="Left" 
                        ImageUrl='<%# Eval("Singer") %>' Width="55px" />
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:BoundField DataField="Song" HeaderText="Song" SortExpression="Song" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:ImageField DataAlternateTextField="Singer" DataImageUrlField="Singer" 
                DataImageUrlFormatString="~/images/{0}" HeaderText="Singer">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="Song" 
                DataNavigateUrlFormatString="~/audio/{0}" DataTextField="Song" 
                HeaderText="Play &amp; Download" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Image ID="Image2" runat="server" BorderStyle="Solid" BorderWidth="4px" 
                Height="43px" ImageUrl='<%# Eval("Singer") %>' ViewStateMode="Disabled" 
                Width="54px"  />
        </EmptyDataTemplate>
    </asp:GridView>
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

