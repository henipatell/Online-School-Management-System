<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewattendance.aspx.cs" Inherits="Online_School_Management_System.viewattendance" %>
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

                     <div class="button"><a href="/stdinfo.aspx"  accesskey="1" class="menubutton" target="_top" title="" >View Profile</a></div>
                    <div class="button"><a href="/viewmarks.aspx"  accesskey="2" class="menubutton" target="_top" title="">View Marks</a></div>
                    <div class="button"><a href="/viewattendance.aspx"  accesskey="3" class="menubutton" target="_top" title="">View Attendance</a></div>
                    <div class="button"><a href="/viewtimetable.aspx"  accesskey="4" class="menubutton" target="_top" title="">View Timetable</a></div>
                    <div class="button"><a href="/viewholidaylist.aspx"  accesskey="5" class="menubutton" target="_top" title="">View HolidayList</a></div>
                    <div class="button"><a href="/viewexamtt.aspx"  accesskey="6" class="menubutton" target="_top" title="">View ExamTimetable</a></div>
                     <div class="button"><a href="/logout.aspx" accesskey="7" class="menubutton" target="_top" title="">Logout</a></div>
               </div>
       
             </td>
            <td class="auto-style8">
                <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 228px; top: 352px; position: absolute; height: 38px; width: 1423px; margin-top: 4px;">Attendance of the students will be given on the bases of days of months they have attended in a perticular month without counting holidays.</p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RollNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 225px; top: 469px; position: absolute; height: 162px; width: 911px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="LoginId" HeaderText="LoginId" SortExpression="LoginId" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                        <asp:BoundField DataField="August" HeaderText="August" SortExpression="August" />
                        <asp:BoundField DataField="September" HeaderText="September" SortExpression="September" />
                        <asp:BoundField DataField="October" HeaderText="October" SortExpression="October" />
                        <asp:BoundField DataField="November" HeaderText="November" SortExpression="November" />
                        <asp:BoundField DataField="December" HeaderText="December" SortExpression="December" />
                        <asp:BoundField DataField="January" HeaderText="January" SortExpression="January" />
                        <asp:BoundField DataField="February" HeaderText="February" SortExpression="February" />
                        <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                        <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LoginId], [RollNo], [Name], [July], [August], [September], [October], [November], [December], [January], [February], [March], [April], [Class] FROM [Attendance] WHERE ([LoginId] = @LoginId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="LoginId" SessionField="loginid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
             </tr>
            </table>


</asp:Content>
