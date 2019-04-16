<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="BuyPage.aspx.vb" Inherits="OnlineSecond.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Buy Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <table style="width: 100%; border: 1px solid #A55129; background-color: ghostwhite">
                            <tr>
                                <td style="height: 200px">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%#"data:Image/png;base64," & Convert.ToBase64String(CType(Eval("image"), Byte()))%>' />

                                </td>
                                <td style="width: 50%;">
                                    <table>
                                        <tr>
                                            <td><b>BookTitle:</b></td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("BookTitle")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>CategoryType:</b></td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("CategoryType")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>FullName of Owner:</b></td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("FullName")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Price:</b></td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Price")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Email:</b></td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Email")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Phone Number:</b></td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("Phone")%>'></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Address:</b></td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("Address")%>'></asp:Label>

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
</asp:Content>
