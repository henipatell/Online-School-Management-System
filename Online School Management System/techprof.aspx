<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="techprof.aspx.cs" Inherits="Online_School_Management_System.techprof" %>
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

                  <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 237px; top: 309px; position: absolute; height: 18px; width: 1423px; margin-top: 4px;"> Teacher's Profile :</p>
   

                 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="2" DataKeyNames="TeachID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" BackColor="#009999" BorderColor="Tan" BorderWidth="1px" style="z-index: 1; left: 234px; top: 368px; position: absolute; height: 466px; width: 652px">
                     <AlternatingRowStyle BackColor="PaleGoldenrod" />
                     <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                     <Fields>
                         <asp:BoundField DataField="TeachID" HeaderText="TeachID" ReadOnly="True" SortExpression="TeachID" />
                         <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                         <asp:BoundField DataField="Mname" HeaderText="Mname" SortExpression="Mname" />
                         <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                         <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                         <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                         <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                         <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                         <asp:BoundField DataField="CurrentAddress" HeaderText="CurrentAddress" SortExpression="CurrentAddress" />
                         <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" SortExpression="PermanentAddress" />
                         <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                         <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                     </Fields>
                     <FooterStyle BackColor="Tan" />
                     <HeaderStyle BackColor="Tan" Font-Bold="True" />
                     <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                 </asp:DetailsView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TeachID], [Fname], [Mname], [Lname], [Gender], [DateofBirth], [EmailId], [PhoneNo], [CurrentAddress], [PermanentAddress], [Degree], [Subject] FROM [Teacher] WHERE (([TeachID] = @TeachID) AND ([TeachID] = @TeachID2))">
                     <SelectParameters>
                         <asp:SessionParameter Name="TeachID" SessionField="loginid" Type="String" />
                         <asp:SessionParameter Name="TeachID2" SessionField="loginid" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
            </td>
             </tr>
            </table>
</asp:Content>
