<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="later.aspx.vb" Inherits="OnlineSecond.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    later
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 347px;
            height: 195px;
        }

        .auto-style9 {
            font-weight: bold;
        }

        .auto-style10 {
            text-align: center;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">
    <h2 class="auto-style10">Welcome Back !</h2>
    <table class="auto-style8" align="center">
        <tbody class="auto-style4">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="input" placeholder="User Name" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td>
                    <asp:TextBox ID="TextBox2" type="password" CssClass="input" placeholder="Password" runat="server" Width="170px"></asp:TextBox>
               </td>
            </tr>
            <tr>                
                <td>
                    <strong>
                        <asp:Button ID="Button1" runat="server" Text="Sign In" BackColor="Black" BorderStyle="None" CssClass="input" ForeColor="White" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx">New User?</asp:LinkButton>
                </td>
            </tr>
            </tbody>
    </table>

</asp:Content>
