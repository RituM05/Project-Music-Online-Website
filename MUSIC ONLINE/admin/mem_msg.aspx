<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="mem_msg.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center> 
   <HR /><h2><asp:Label ID="Label1" runat="server" Text="MESSAGES FROM MEMBERS" Font-Bold="True" 
           Font-Names="Century" ForeColor="#FF5050"></asp:Label></h2><hr /></center>
   <br />
   <br />
    <center>   
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
           DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        GridLines="Vertical" ForeColor="Black" 
            Font-Names="Franklin Gothic Medium Cond" Font-Size="Larger" Height="100px" 
            Width="200px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="EMAIL ID" HeaderText="EMAIL ID" 
                    SortExpression="EMAIL ID" />
                <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" 
                    SortExpression="MESSAGE" />
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
   
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [mem_msg] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [mem_msg] ([NAME], [EMAIL ID], [MESSAGE]) VALUES (@NAME, @EMAIL_ID, @MESSAGE)" 
            SelectCommand="SELECT * FROM [mem_msg]" 
            UpdateCommand="UPDATE [mem_msg] SET [NAME] = @NAME, [EMAIL ID] = @EMAIL_ID, [MESSAGE] = @MESSAGE WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="EMAIL_ID" Type="String" />
                <asp:Parameter Name="MESSAGE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="EMAIL_ID" Type="String" />
                <asp:Parameter Name="MESSAGE" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
       
</center>
</asp:Content>


