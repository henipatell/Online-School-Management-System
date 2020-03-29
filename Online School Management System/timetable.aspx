<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="Online_School_Management_System.timetable" %>
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

                 <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 237px; top: 309px; position: absolute; height: 18px; width: 1423px; margin-top: 4px;">Time Table for standard 11th science-A</p>
   

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Time1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 232px; top: 356px; position: absolute; height: 258px; width: 441px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Time1" HeaderText="Time1" ReadOnly="True" SortExpression="Time1" />
                        <asp:BoundField DataField="Time2" HeaderText="Time2" SortExpression="Time2" />
                        <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                        <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
                        <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                        <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                        <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
                        <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TimeTable]"></asp:SqlDataSource>
                </td>
             </tr>
            </table>
</asp:Content>
