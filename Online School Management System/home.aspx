<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Online_School_Management_System.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="569px" style="margin-top: 0px">
        <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#009999" BorderStyle="Outset" BorderWidth="10px" ImageUrl="~/Images/teach1.jpg" OnClick="ImageButton2_Click" style="z-index: 1; left: 765px; top: 380px; position: absolute; height: 160px; width: 185px" PostBackUrl="~/techlogin.aspx" />
        <asp:Label ID="Label2" runat="server" ForeColor="#009999" style="z-index: 1; left: 836px; top: 339px; position: absolute; height: 26px" Text="Teachers"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#009999" BorderStyle="Outset" BorderWidth="10px" ForeColor="#FF99FF" ImageUrl="~/Images/std1.jpg" OnClick="ImageButton1_Click1"  style="z-index: 1; left: 375px; top: 374px; position: absolute; height: 160px; width: 185px" />
        <asp:Label ID="Label3" runat="server" ForeColor="#009999" style="z-index: 1; left: 452px; top: 335px; position: absolute" Text="Students"></asp:Label>
    </asp:Panel>
</asp:Content>
