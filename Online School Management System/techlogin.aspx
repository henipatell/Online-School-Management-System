<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="techlogin.aspx.cs" Inherits="Online_School_Management_System.techlogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="569px" style="margin-top: 0px">
        
        <asp:Panel ID="Panel2" runat="server" Height="569px" style="margin-top: 0px">
        <p style="font-weight: 100; font-style: normal; font-variant: normal; text-transform: inherit; color: #000000; text-decoration:blink ; font-size: medium; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">NOTE : All the Teachers are informed that Login Id for this site will be his/her ID No., And Password will be his/her Birthdate(Ex:11/01/99).</p>
        <asp:Panel ID="Panel3" runat="server" BackColor="#009999" style="z-index: 1; left: 431px; top: 395px; position: absolute; height: 184px; width: 458px" BorderColor="#CC9900" BorderStyle="Inset" BorderWidth="3px">
            <asp:Panel ID="Panel4" runat="server" BackColor="#CCFFFF" style="z-index: 1; left: 12px; top: 23px; position: absolute; height: 38px; width: 431px">
                <asp:Label ID="Label1" runat="server" Font-Bold="true" ForeColor="Black" style="z-index: 1; left: 28px; top: 11px; position: absolute" Text="Login ID :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 115px; top: 9px; position: absolute; width: 166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="*Required" style="z-index: 1; left: 302px; top: 12px; position: absolute" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel5" runat="server" BackColor="#CCFFFF" style="z-index: 1; left: 11px; top: 66px; position: absolute; height: 40px; width: 432px">
                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 28px; top: 11px; position: absolute" Text="Password :" Font-Bold="true"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox2" ErrorMessage="*Required" style="z-index: 1; left: 304px; top: 13px; position: absolute" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Textbox2" ErrorMessage="*Wrong Password" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" style="z-index: 1; left: 371px; top: 0px; position: absolute"></asp:CustomValidator>
            </asp:Panel>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 127px; top: 75px; position: absolute; width: 167px" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" EnableTheming="true" Font-Bold="true" OnClick="Button1_Click" style="z-index: 1; left: 148px; top: 138px; position: absolute; width: 158px; height: 38px;" Text="Login" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
        </asp:Panel>

    </asp:Panel>

    </asp:Panel>

</asp:Content>
