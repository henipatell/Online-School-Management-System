<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stdinfo.aspx.cs" Inherits="Online_School_Management_System.stdfrof" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">


        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 205px;
            background-color:#8fccea;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="side.css" rel="stylesheet" />
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <div id="sidepanel">
    <div class="button"><a href="/stdinfo.aspx" onclick="Click_info" accesskey="1" class="menubutton" target="_top" title="" >View Profile</a></div>
    <div class="button"><a href="/viewmarks.aspx" accesskey="2" class="menubutton" target="_top" title="">View Marks</a></div>
    <div class="button"><a href="/viewattendance.aspx" accesskey="3" class="menubutton" target="_top" title="" onclick="Attend" type="text/asp">View Attendance</a></div>
    <div class="button"><a href="/viewtimetable.aspx" accesskey="4" class="menubutton" target="_top" title="">View Timetable</a></div>
    <div class="button"><a href="/viewholidaylist.aspx" accesskey="5" class="menubutton" target="_top" title="">View HolidayList</a></div>
    <div class="button"><a href="/viewexamtt.aspx" accesskey="6" class="menubutton" target="_top" title="">View ExamTimetable</a></div>
    <div class="button"><a href="/logout.aspx" accesskey="7" class="menubutton" target="_top" title="">Logout</a></div>

    </div>
       
             </td>
            <td>
               <div class="fontstyle">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="User ID :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="First Name :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Middle Name :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Last Name :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Date Of Birth :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Gender :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Last School :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Percentage in 10th :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Email ID :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Current Address :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Perminant Address :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Selected Subject :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Class :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14"  runat="server" Text="Roll No :"></asp:Label>
               </div>
            </td>
        </tr>
    </table>
    
   
</asp:Content>
