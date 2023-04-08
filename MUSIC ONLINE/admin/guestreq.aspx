<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdMasterPage.master" AutoEventWireup="true" CodeFile="guestreq.aspx.cs" Inherits="admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <center> 
   <h3><asp:Label ID="Label1" runat="server" Text="REQUESTS BY GUESTS"></asp:Label></h3>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
           DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" 
            ForeColor="Black">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                   ShowSelectButton="True" />
               <asp:BoundField DataField="id" HeaderText="id" 
                   ReadOnly="True" SortExpression="id" InsertVisible="False" />
               <asp:BoundField DataField="category" HeaderText="category" 
                   SortExpression="category" />
               <asp:BoundField DataField="songname" HeaderText="songname" 
                   SortExpression="songname" />
               <asp:BoundField DataField="singername" HeaderText="singername" 
                   SortExpression="singername" />
               <asp:BoundField DataField="type" HeaderText="type" 
                   SortExpression="type" />
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
   
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [GuestReq] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [GuestReq] ([category], [songname], [singername], [type]) VALUES (@category, @songname, @singername, @type)" 
            SelectCommand="SELECT * FROM [GuestReq]" 
            UpdateCommand="UPDATE [GuestReq] SET [category] = @category, [songname] = @songname, [singername] = @singername, [type] = @type WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="songname" Type="String" />
                <asp:Parameter Name="singername" Type="String" />
                <asp:Parameter Name="type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="songname" Type="String" />
                <asp:Parameter Name="singername" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
       
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


