<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewholidays.aspx.cs" Inherits="Online_School_Management_System.viewholidays" %>
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

                    <div class="button"><a href="/techprof.aspx" accesskey="1" class="menubutton" target="_top" title="" >View Profile</a></div>
                    <div class="button"><a href="/updatemarks.aspx" accesskey="2" class="menubutton" target="_top" title="">Update Marks</a></div>
                    <div class="button"><a href="/updateattendance.aspx" accesskey="3" class="menubutton" target="_top" title="">Update Attendance</a></div>
                    <div class="button"><a href="/timetable.aspx" accesskey="4" class="menubutton" target="_top" title="">View Timetable</a></div>
                    <div class="button"><a href="/viewholidays.aspx" accesskey="5" class="menubutton" target="_top" title="">View HolidayList</a></div>
                    <div class="button"><a href="/viewstudentsprofiles.aspx" accesskey="6" class="menubutton" target="_top" title="">View Student's Profiles</a></div>
                    <div class="button"><a href="/viewexamtimetable.aspx" accesskey="7" class="menubutton" target="_top" title="" >View Exam TimeTable</a></div>
                     <div class="button"><a href="/logout.aspx" accesskey="7" class="menubutton" target="_top" title="">Logout</a></div>
                </div>
       
             </td>
            <td class="auto-style8">
                </td>
             </tr>
            </table>
</asp:Content>
