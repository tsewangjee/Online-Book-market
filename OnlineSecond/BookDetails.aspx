<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AfterLogin.Master" CodeBehind="BookDetails.aspx.vb" Inherits="OnlineSecond.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Book Details
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
            width: 100%;
        }

        .auto-style12 {
            width: 467px;
            text-align: right;
        }

        .auto-style13 {
            width: 467px;
            height: 23px;
            text-align: right;
        }

        .auto-style14 {
            width: 189px;
            height: 23px;
            text-align: center;
        }

        .auto-style15 {
            font-weight: bold;
        }

        .auto-style16 {
            text-align: center;
            text-decoration: underline;
            color: red;
            height: 62px;
        }

        .auto-style17 {
            width: 467px;
            height: 26px;
            text-align: right;
        }

        .auto-style18 {
            width: 189px;
            height: 26px;
            text-align: center;
        }
        .auto-style19 {
        width: 189px;
        text-align: center;
        margin-left: 0px;
    }
        .auto-style20 {
        width: 189px;
        text-align: center;
        height: 26px;
        margin-left: 0px;
    }
        .auto-style21 {
            height: 26px;
        }
        .auto-style22 {
            margin-left: 0px;
        }
        .auto-style23 {
            width: 467px;
            height: 27px;
            text-align: right;
        }
        .auto-style24 {
            width: 189px;
            height: 27px;
            text-align: center;
        }
        .auto-style25 {
            height: 27px;
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
                <td class="auto-style23">Book Title
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox1" autocomplete="off" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td class="auto-style25">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Book Title is required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style17">Category
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="196px" CssClass="auto-style22">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Category is required" ForeColor="Red" InitialValue="Select Category" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style17">Description
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox5" autocomplete="off" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td class="auto-style21">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Description is Required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style12">Price
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox4" autocomplete="off" runat="server"  Width="190px" placeholder="in rupees"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Price is Required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style12">Author Name
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" autocomplete="off" runat="server"  Width="190px"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Author Name is required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style17">Status
                </td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="196px">
                        <asp:ListItem>Choose Status</asp:ListItem>
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Status is required" ForeColor="Red" InitialValue="Choose Status" Text="*"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style13">Image
                </td>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="197px" />
                </td>
                 <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Image is required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                     <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>

                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style10">
                    <strong>
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="25px" BackColor="Black" BorderStyle="None" CssClass="auto-style15" ForeColor="White" />
                    </strong>
                </td>

            </tr>
            <tr>
                <td colspan="3" class="auto-style4">

                    <asp:Label ID="Label2" runat="server" ForeColor="#009933"></asp:Label>

                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style16" style="color: #0026ff">(please change the &#39;status&#39; in Edit section once it is sold.)
                    <br />
                    Thank you.<br />
&nbsp;<asp:ValidationSummary ID="ValidationSummary1" HeaderText="Please make sure :" runat="server" ForeColor="Red" DisplayMode="List" />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
