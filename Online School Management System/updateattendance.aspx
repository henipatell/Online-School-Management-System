<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updateattendance.aspx.cs" Inherits="Online_School_Management_System.updateattendance" %>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RollNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField HeaderText="LoginId" DataField="LoginId"  SortExpression="LoginId" InsertVisible="False" />
                            <asp:BoundField HeaderText="RollNo" DataField="RollNo" ReadOnly="True" SortExpression="RollNo" />
                            <asp:BoundField HeaderText="Name" DataField="Name" SortExpression="Name" ReadOnly="True" InsertVisible="False" />
                            <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                            <asp:BoundField HeaderText="August" DataField="August" SortExpression="August" />
                            <asp:BoundField HeaderText="September" DataField="September" SortExpression="September" />
                            <asp:BoundField HeaderText="October" DataField="October" SortExpression="October" />
                            <asp:BoundField HeaderText="November" DataField="November" SortExpression="November" />
                            <asp:BoundField HeaderText="December" DataField="December" SortExpression="December" />
                            <asp:BoundField HeaderText="January" DataField="January" SortExpression="January" />
                            <asp:BoundField HeaderText="February" DataField="February" SortExpression="February" />
                            <asp:BoundField HeaderText="March" DataField="March" SortExpression="March" />
                            <asp:BoundField HeaderText="April" DataField="April" SortExpression="April" />
                            <asp:BoundField HeaderText="Class" DataField="Class" SortExpression="Class" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Attendance] WHERE [RollNo] = @RollNo" InsertCommand="INSERT INTO [Attendance] ([LoginId], [RollNo], [Name], [July], [August], [September], [October], [November], [December], [January], [February], [March], [April], [Class]) VALUES (@LoginId, @RollNo, @Name, @July, @August, @September, @October, @November, @December, @January, @February, @March, @April, @Class)" SelectCommand="SELECT Attendance.LoginId, Attendance.RollNo, Attendance.Name, Attendance.July, Attendance.August, Attendance.September, Attendance.October, Attendance.November, Attendance.December, Attendance.January, Attendance.February, Attendance.March, Attendance.April, Attendance.Class FROM Attendance CROSS JOIN Teacher WHERE (Teacher.TeachId = @TeachId)" UpdateCommand="UPDATE Attendance SET July = @July, August = @August, September = @September, October = @October, November = @November, December = @December, January = @January, February = @February, March = @March, April = @April WHERE (LoginId=@LoginId)">
                        <DeleteParameters>
                            <asp:Parameter Name="RollNo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LoginId" Type="String" />
                            <asp:Parameter Name="RollNo" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="July" Type="Int32" />
                            <asp:Parameter Name="August" Type="Int32" />
                            <asp:Parameter Name="September" Type="Int32" />
                            <asp:Parameter Name="October" Type="Int32" />
                            <asp:Parameter Name="November" Type="Int32" />
                            <asp:Parameter Name="December" Type="Int32" />
                            <asp:Parameter Name="January" Type="Int32" />
                            <asp:Parameter Name="February" Type="Int32" />
                            <asp:Parameter Name="March" Type="Int32" />
                            <asp:Parameter Name="April" Type="Int32" />
                            <asp:Parameter Name="Class" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="TeachId" SessionField="loginid" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="July" Type="Int32" />
                            <asp:Parameter Name="August" Type="Int32" />
                            <asp:Parameter Name="September" Type="Int32" />
                            <asp:Parameter Name="October" Type="Int32" />
                            <asp:Parameter Name="November" Type="Int32" />
                            <asp:Parameter Name="December" Type="Int32" />
                            <asp:Parameter Name="January" Type="Int32" />
                            <asp:Parameter Name="February" Type="Int32" />
                            <asp:Parameter Name="March" Type="Int32" />
                            <asp:Parameter Name="April" Type="Int32" />
                            <asp:Parameter Name="LoginId" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
             </tr>
            </table>

</asp:Content>
