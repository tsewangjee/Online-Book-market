<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Search.aspx.vb" Inherits="OnlineSecond.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">
     <asp:TextBox ID="SearchTextBox"  AutoCompleteType="Search" runat="server" Text="" placeholder="Search Books" CssClass="auto-style9" Width="195px" />
    <asp:Button ID="SearchButton1" runat="server" Text="Search" />
                    <br />
                    <br />
    <asp:LinkButton ID="LinkButton1" runat="server">View All Books</asp:LinkButton>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" BorderStyle="None" Width="100%" DataKeyField="BookID">
                        <ItemTemplate>
                            <table  class="auto-style10" style="font-family: Gabriola; border:0.5px ; font-size: large; align-content:center; background-color: #FFFFFF; font-size: 20px;">
                                <tr>
                                    <td> BookID:
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("BookID") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11"> BookTitle:<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td> CategoryType:<asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryType") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td> Description:<asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td> Price(INR):<asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td> <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%#"data:image/jpg;base64," & Convert.ToBase64String(CType(Eval("image"), Byte())) %>'  />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12"> AuthorName:<asp:Label ID="Label9" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td> Status:<asp:Label ID="Label7" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                    </td>
                                </tr>
                                            
                            </table>
                            
                                    <asp:Button ID="BuyButton" runat="server" Text="BUY"  BorderColor="#0000CC" Font-Bold="True" ForeColor="#0000CC" PostBackUrl="~/BuyPage.aspx" />
                                    <br />
                            <br />
                            <br />
                        </ItemTemplate>
                       
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [CategoryType], [Description], [Price], [AuthorName], [Status], [Image] FROM [Books]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [CategoryType], [Description], [Price], [AuthorName], [Status], [Image] FROM [Books] WHERE ([BookTitle] LIKE '%' + @BookTitle + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="SearchTextBox" Name="BookTitle" PropertyName="Text" Type="String" />
        
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
