<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="techlogin11.aspx.cs" Inherits="Online_School_Management_System.techlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="login.css" rel="stylesheet" />
    <asp:Panel ID="Panel1" runat="server" Height="569px" style="margin-top: 0px">
        <p style="font-weight: 100; font-style: normal; font-variant: normal; text-transform: inherit; color: #000000; text-decoration:blink ; font-size: medium; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">NOTE : All the Teachers are informed that Login Id for this site will be his/her ID No., And Password will be his/her Birthdate(Ex:11/01/99).</p>
         <div class="main">
		<div class="login-form">

			<h1>Member Login</h1>
            <br/>
					<div class="head">
						<img src="images/user.png" alt=""/>
					</div>
				
						<!--<input type="text" class="text" value="USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
                        &nbsp;<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">-->
                        <asp:TextBox ID="TextBox1" type="text" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2"  type="Password" runat="server"></asp:TextBox>
						<div class="submit">
							<!--<input type="submit" onclick="myFunction()" value="LOGIN" >-->
                            <asp:Button ID="Button1" runat="server" Text="Login" UseSubmitBehavior="true" OnClick="Button1_Click" />
					</div>	
					
				
			</div>
             </div>
			<!--//End-login-form-->

    </asp:Panel>
</asp:Content>
