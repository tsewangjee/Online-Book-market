<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUp.aspx.vb" Inherits="OnlineSecond.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        .auto-style8 {
            width: 700px;
            height: 195px;
            margin-left:450px;

        }

        .auto-style10 {
            width: 168px;
            text-align: right;
        }

        .auto-style11 {
            height: 27px;
            width: 168px;
            text-align: right;
        }

        .auto-style12 {
            width: 168px;
            height: 69px;
        }

        .auto-style14 {
            text-align: center;
            height: 47px;
            padding-top: 50px;
        }

        .auto-style16 {
            font-weight: bold;
        }
        .auto-style17 {
            text-align: center;
            padding-bottom: 20px;
        }
        .auto-style18 {
            width: 168px;
            text-align: right;
            height: 26px;
        }
        .auto-style19 {
            width: 178px;
            height: 26px;
        }
        .auto-style21 {
            width: 168px;
            text-align: right;
            height: 30px;
        }
        .auto-style22 {
            width: 178px;
            height: 30px;
        }
        .auto-style25 {
            width: 178px;
        }
        .auto-style27 {
            height: 27px;
            width: 178px;
        }
        .auto-style28 {
            height: 69px;
            width: 178px;
            text-align: left;
        }
        .auto-style29 {
            width: 490px;
            height: 30px;
        }
        .auto-style30 {
            width: 490px;
            height: 26px;
        }
        .auto-style31 {
            width: 490px;
        }
        .auto-style32 {
            width: 168px;
            height: 49px;
        }
        .auto-style33 {
            height: 49px;
            width: 178px;
            text-align: left;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
      <div>
          <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Home.aspx" CausesValidation="False">[back to home-page]</asp:LinkButton>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]" ></asp:SqlDataSource>
      </div>
        <div>

            <h2 class="auto-style14">Sign up and you can post your own old books !</h2>

        </div>
        <table class="auto-style8" align="center" >
            <tbody class="auto-style4">

                <tr>
                <td colspan="2" class="auto-style17">

                        <asp:Label ID="Label1" runat="server" Text="Already a member?"></asp:Label>
                        &nbsp;
                  <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/SignIn.aspx" CausesValidation="False">Click Here</asp:LinkButton>

                    </td>
                </tr>

                <tr>
                    <td class="auto-style21">User Name</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox1" autocomplete="off" runat="server" Width="170px"></asp:TextBox></td>
                    <td class="auto-style29">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is required" ForeColor="Red" ControlToValidate="TextBox1" Text="*"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Full Name</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox2" autocomplete="off" runat="server" Width="170px"></asp:TextBox></td>
                    <td class="auto-style30">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Full Name is required" ForeColor="Red" ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Email</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox3" autocomplete="off" runat="server" Width="170px"></asp:TextBox></td>
                    <td class="auto-style31">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Phone</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox4" autocomplete="off" runat="server" Width="170px"></asp:TextBox></td>
                    <td class="auto-style31">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone number is required" ForeColor="Red" ControlToValidate="TextBox4" Text="*"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Address</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox5" autocomplete="off" runat="server" Width="170px"></asp:TextBox></td>
                    <td class="auto-style31">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is required" ForeColor="Red" ControlToValidate="TextBox5" Text="*"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Password</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TextBox6"  runat="server" Width="170px" TextMode="Password"></asp:TextBox></td>
                    <td class="auto-style31">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="TextBox6" Text="*"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Confirm Password</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TextBox7" runat="server" Width="170px" TextMode="Password"></asp:TextBox></td>
                    <td class="auto-style31">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Confirm Password is required" ForeColor="Red" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password and Confirm password must be same" ForeColor="Red" Display="Dynamic">*</asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        <br />
                    </td>
                    <td colspan="2" class="auto-style33">
                        <strong>
                            <asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="Black" BorderStyle="None" CssClass="auto-style16" ForeColor="White" /></strong></td>

                </tr>
                <tr>
                    <td class="auto-style12">
                        </td>
                    <td colspan="2" class="auto-style28">
                        <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Validation errors" ForeColor="red" runat="server" DisplayMode="List" />
                    </td>

                </tr>
       
            </tbody>
        </table>
    </form>
</body>
</html>
