<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sem4.aspx.cs" Inherits="Online_School_Management_System.sem4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
            height: 570px;
        }
        .auto-style7 {
            width: 205px;
            background-color:#8fccea;
            height: 575px;
        }

        .auto-style8 {
            height: 575px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="side.css" rel="stylesheet" />
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <div id="sidepanel">
    <div class="button"><a href="/stdinfo.aspx" accesskey="1" class="menubutton" target="_top" title="" >View Profile</a></div>
    <div class="button"><a href="/viewmarks.aspx" accesskey="2" class="menubutton" target="_top" title="">View Marks</a></div>
    <div class="button"><a href="/viewattendance.aspx" accesskey="3" class="menubutton" target="_top" title="">View Attendance</a></div>
    <div class="button"><a href="/viewtimetable.aspx" accesskey="4" class="menubutton" target="_top" title="">View Timetable</a></div>
    <div class="button"><a href="/viewholidaylist.aspx" accesskey="4" class="menubutton" target="_top" title="">View HolidayList</a></div>
    <div class="button"><a href="/viewexamtt.aspx" accesskey="4" class="menubutton" target="_top" title="">View ExamTimetable</a></div>
    <div class="button"><a href="/logout.aspx" accesskey="7" class="menubutton" target="_top" title="">Logout</a></div>
    </div>
       
             </td>
            <td>
            </td>
            </tr>
        </table>
</asp:Content>
