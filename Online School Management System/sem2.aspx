<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sem2.aspx.cs" Inherits="Online_School_Management_System.sem2" %>
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

                <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 228px; top: 352px; position: absolute; height: 38px; width: 1423px; margin-top: 4px;">Marks of the First Internal&nbsp; and Second Internal Exams :</p>
               

                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoginId,RollNo,Class" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 228px; top: 443px; position: absolute; height: 152px; width: 827px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="LoginId" HeaderText="LoginId" ReadOnly="True" SortExpression="LoginId" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                        <asp:BoundField DataField="Class" HeaderText="Class" ReadOnly="True" SortExpression="Class" />
                        <asp:BoundField DataField="1st-Internal-Maths" HeaderText="1st-Internal-Mathematics" SortExpression="1st-Internal-Maths" />
                        <asp:BoundField DataField="1st-Internal-Physics" HeaderText="1st-Internal-Physics" SortExpression="1st-Internal-Physics" />
                        <asp:BoundField DataField="1st-Internal-Chemistry" HeaderText="1st-Internal-Chemistry" SortExpression="1st-Internal-Chemistry" />
                        <asp:BoundField DataField="1st-Internal-English" HeaderText="1st-Internal-English" SortExpression="1st-Internal-English" />
                        <asp:BoundField DataField="1st-Internal-Computer" HeaderText="1st-Internal-Computer" SortExpression="1st-Internal-Computer" />
                        <asp:BoundField DataField="2nd-Internal-Maths" HeaderText="2nd-Internal-Mathematics" SortExpression="2nd-Internal-Maths" />
                        <asp:BoundField DataField="2nd-Internal-Physics" HeaderText="2nd-Internal-Physics" SortExpression="2nd-Internal-Physics" />
                        <asp:BoundField DataField="2nd-Internal-Chemistry" HeaderText="2nd-Internal-Chemistry" SortExpression="2nd-Internal-Chemistry" />
                        <asp:BoundField DataField="2nd-Internal-English" HeaderText="2nd-Internal-English" SortExpression="2nd-Internal-English" />
                        <asp:BoundField DataField="2nd-Internal-Computer" HeaderText="2nd-Internal-Computer" SortExpression="2nd-Internal-Computer" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Sem1SecondInt.LoginId, Sem1SecondInt.RollNo, Sem1SecondInt.Class, Sem1FirstInt.Maths AS [1st-Internal-Maths], Sem1FirstInt.Physics AS [1st-Internal-Physics], Sem1FirstInt.Chemistry AS [1st-Internal-Chemistry], Sem1FirstInt.English AS [1st-Internal-English], Sem1FirstInt.Computer AS [1st-Internal-Computer], Sem1SecondInt.Maths AS [2nd-Internal-Maths], Sem1SecondInt.Physics AS [2nd-Internal-Physics], Sem1SecondInt.Chemistry AS [2nd-Internal-Chemistry], Sem1SecondInt.English AS [2nd-Internal-English], Sem1SecondInt.Computer AS [2nd-Internal-Computer] FROM Sem1FirstInt INNER JOIN Sem1SecondInt ON Sem1FirstInt.LoginId = Sem1SecondInt.LoginId AND Sem1FirstInt.RollNo = Sem1SecondInt.RollNo AND Sem1FirstInt.Class = Sem1SecondInt.Class WHERE (Sem1FirstInt.LoginId = @LoginId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="LoginId" SessionField="loginid" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
            </tr>
        </table>
</asp:Content>
