<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignIn.aspx.vb" Inherits="OnlineSecond.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <style type="text/css">
        .auto-style8 {
            width: 250px;
            height: 195px;
            border-style: groove;
            border-color: grey;
            padding: 20px;
        }

        .auto-style10 {
            text-align: center;
            height: 38px;
            padding-top: 30px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            width: 162px;
        }
        .auto-style13 {
            width: 162px;
        }
        .auto-style14 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Home.aspx" CausesValidation="False">[back to home-page]</asp:LinkButton>
        </div>
        <div>
            <h2 class="auto-style10">Welcome Back to existing users !</h2>
            <h2 class="auto-style10">(New users, Must be a member to sell your books.)</h2>
            <table class="auto-style8" align="center" >
                <tbody class="auto-style4">
                    <tr>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBoxUserName" CssClass="input" autocomplete="off" placeholder="User Name" runat="server" Width="170px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is required" ForeColor="Red" Text="*" ControlToValidate="TextBoxUserName">*</asp:RequiredFieldValidator>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBoxPassword"  CssClass="input" autocomplete="off"  placeholder="Password" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style14">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ForeColor="Red" Text="*" ControlToValidate="TextBoxPassword">*</asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style11">
                            <strong>
                                <asp:Button ID="Button1" runat="server" Text="Sign In" BackColor="Black" BorderStyle="None" CssClass="input" ForeColor="White" />
                            </strong>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2" class="auto-style11">
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx" CausesValidation="False">New User?</asp:LinkButton>
                        </td>
                    </tr>
                    <tr class="auto-style11">
                        <td class="auto-style13">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="List" />
                        </td>
                    </tr>
                   
                </tbody>
            </table>

        </div>
    </form>
</body>
</html>
