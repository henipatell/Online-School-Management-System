<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewmarks.aspx.cs" Inherits="Online_School_Management_System.viewmarks" %>
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
            <td class="auto-style8">
                <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 230px; top: 296px; position: absolute; height: 60px; width: 1423px">
                    &nbsp; There are 4 semesters during 11th and 12th with science stream. There are two internal exams in each Semester.
                    <br />
                    &nbsp;Each exam will be of 100 marks.<br/> 
                </asp:Panel>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/sem3.aspx" style="z-index: 1; left: 245px; top: 502px; position: absolute">View Result of 3rd Semester</asp:HyperLink>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/sem1.aspx" style="z-index: 1; left: 247px; top: 408px; position: absolute">View Result of 1st Semester</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/sem2.aspx" style="z-index: 1; left: 246px; top: 453px; position: absolute">View Result of 2nd Semester</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/sem4.aspx" style="z-index: 1; left: 245px; top: 557px; position: absolute">View Result of 4th Semester</asp:HyperLink>
                </td>
             </tr>
            </table>

</asp:Content>
