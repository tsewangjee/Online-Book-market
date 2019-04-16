<%@ Page Title="" Language="vb" AutoEventWireup="false"  MasterPageFile="~/Page.Master" CodeBehind="EngineeringSec.aspx.vb" Inherits="OnlineSecond.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Engineering Collections
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <table style="border: 1px solid #A55129; background-color: #FFF7E7; width: 100%" aria-checked="mixed">
                <tr style="height: 200px">
                    <td style="width: 30%; padding: 0px">
                        <asp:Image ID="Image1" Width="200px" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String(CType(Eval("Image"), Byte())) %>' runat="server" />
                    </td>
                    <td style="width: 60%">
                        <table>
                            <tr>
                                <td>
                                    <b>Book Title : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("BookTitle") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Category : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("CategoryType") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Description : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Description") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Price(INR) : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("Price") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Author Name : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("AuthorName ") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Status : </b>
                                </td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Status") %>'>

                                    </asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                    </td>
                    <td style="width: 10%">
                   
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CommandArgument='<%#Eval("BookID") %>' Text="BUY" BorderColor="#0000CC" Font-Bold="True" ForeColor="#0000CC" CausesValidation="True" PostBackUrl="~/BuyPage.aspx" />
                    </td>
                </tr>
            </table>

        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
