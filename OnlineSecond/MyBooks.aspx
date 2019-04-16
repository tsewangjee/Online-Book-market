<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AfterLogin.Master" CodeBehind="MyBooks.aspx.vb" Inherits="OnlineSecond.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    My Books
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">
    

        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1"  CellPadding="20" CssClass="auto-style9" Height="100%" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
            <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
            
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BookTitle" SortExpression="BookTitle">
                
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryType" SortExpression="CategoryType">
                
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="AuthorName" SortExpression="AuthorName">
               
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("AuthorName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Status") %>'>
                       
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Image" SortExpression="Image">
              
                <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%#"data:image/jpg;base64," & Convert.ToBase64String(CType(Eval("Image"), Byte())) %>'  Height="150px" Width="150px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
        DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" 
        InsertCommand="INSERT INTO [Books] ([UserID], [BookTitle], [CategoryType], [Description], [Price], [AuthorName], [Status], [Image]) VALUES (@UserID, @BookTitle, @CategoryType, @Description, @Price, @AuthorName, @Status, @Image)" 
        SelectCommand="SELECT * FROM [Books] INNER JOIN [Users] ON Books.UserID=Users.UserId WHERE UserName=@New" 
        UpdateCommand="UPDATE [Books] SET [UserID] = @UserID, [BookTitle] = @BookTitle, [CategoryType] = @CategoryType, [Description] = @Description, [Price] = @Price, [AuthorName] = @AuthorName, [Status] = @Status WHERE [BookID] = @BookID">
        <SelectParameters>
            <asp:SessionParameter Name="New" SessionField="New" DefaultValue="0"/>
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="CategoryType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Image"  />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="CategoryType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Image" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

        
</asp:Content>
