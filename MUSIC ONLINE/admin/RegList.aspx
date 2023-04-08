<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="RegList.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <hr /><h1 style="color:Black"><strong>MEMBER LIST</strong></h1><hr />
    <center><table width="350"><tr><td>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        Height="254px" Width="300px" BackColor="White" BorderColor="#DEDFDE" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" 
            AllowSorting="True" Font-Size="9pt" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" 
                SortExpression="PASSWORD" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                SortExpression="GENDER" />
            <asp:BoundField DataField="AGE" HeaderText="AGE" 
                SortExpression="AGE" />
            <asp:BoundField DataField="PHONE NUMBER" HeaderText="PHONE NUMBER" 
                SortExpression="PHONE NUMBER" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="EMAIL ID" HeaderText="EMAIL ID" 
                SortExpression="EMAIL ID" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    </td></tr></table></center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Registration] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Registration] ([NAME], [PASSWORD], [GENDER], [AGE], [PHONE NUMBER], [CITY], [EMAIL ID]) VALUES (@NAME, @PASSWORD, @GENDER, @AGE, @PHONE_NUMBER, @CITY, @EMAIL_ID)" 
        SelectCommand="SELECT * FROM [Registration]" 
        
    UpdateCommand="UPDATE [Registration] SET [NAME] = @NAME, [PASSWORD] = @PASSWORD, [GENDER] = @GENDER, [AGE] = @AGE, [PHONE NUMBER] = @PHONE_NUMBER, [CITY] = @CITY, [EMAIL ID] = @EMAIL_ID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PASSWORD" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="AGE" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="EMAIL_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PASSWORD" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="AGE" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="EMAIL_ID" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

