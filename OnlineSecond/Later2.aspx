<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Later2.aspx.vb" Inherits="OnlineSecond.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sell Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 33px;
        }

        .auto-style10 {
            text-align: center;
            height: 51px;
        }

        .auto-style11 {
            width: 410px;
        }

        .auto-style12 {
            width: 83px;
            text-align: left;
        }

        .auto-style13 {
            width: 83px;
            height: 23px;
            text-align: left;
        }

        .auto-style14 {
            width: 33px;
            height: 23px;
        }

        .auto-style15 {
            font-weight: bold;
        }

        .auto-style16 {
            text-align: center;
            text-decoration: underline;
            color: red;
        }

        .auto-style17 {
            width: 83px;
            height: 26px;
            text-align: left;
        }

        .auto-style18 {
            width: 33px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">
    <div>
        <h2 class="auto-style10">Please enter the details of your book</h2>
    </div>
    <table align="center" class="auto-style11">
        <tbody>
            <tr>
                <td class="auto-style17">Book Title
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Category
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="127px">
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td class="auto-style17">Description
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Price
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" Width="190px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style12">Author Name
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="190px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style12">Status
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="127px">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Image
                </td>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style10">
                    <strong>
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="25px" BackColor="Black" BorderStyle="None" CssClass="auto-style15" ForeColor="White" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">(please change the &#39;status&#39; in Edit section once it is sold.)
                    <br />
                    Thank you.
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
