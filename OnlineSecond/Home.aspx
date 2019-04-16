<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Home.aspx.vb" Inherits="OnlineSecond.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodymain" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="4000"></asp:Timer>
                <asp:Image ID="Image1" Height="500px" Width="1100px" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>
