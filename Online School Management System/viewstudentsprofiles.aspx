<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewstudentsprofiles.aspx.cs" Inherits="Online_School_Management_System.viewstudentsprofiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
            height: 570px;
        }
        .auto-style7 {
            width: 236px;
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
    <div class="button"><a href="/viewholidays.aspx" accesskey="4" class="menubutton" target="_top" title="">View HolidayList</a></div>
    <div class="button"><a href="/viewstudentsprofiles.aspx" accesskey="4" class="menubutton" target="_top" title="">View Student's Profiles</a></div>
    <div class="button"><a href="/logout.aspx" accesskey="7" class="menubutton" target="_top" title="">Logout</a></div>
    </div>
       
             </td>
            <td class="auto-style8">

                 <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 268px; top: 296px; position: absolute; height: 18px; width: 1260px; margin-top: 4px;">Students of 11th science A(MATHEMATICS):</p>
   

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoginId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 266px; top: 335px; position: absolute; height: 343px; width: 1000px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="LoginId" HeaderText="LoginId" ReadOnly="True" SortExpression="LoginId" />
                         <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                         <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
                         <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                         <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                         <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                         <asp:BoundField DataField="Last_School" HeaderText="Last_School" SortExpression="Last_School" />
                         <asp:BoundField DataField="Percentage_in_10th" HeaderText="Percentage_in_10th" SortExpression="Percentage_in_10th" />
                         <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                         <asp:BoundField DataField="CurrentAddress" HeaderText="CurrentAddress" SortExpression="CurrentAddress" />
                         <asp:BoundField DataField="PerminantAddress" HeaderText="PerminantAddress" SortExpression="PerminantAddress" />
                         <asp:BoundField DataField="SelectedSubject" HeaderText="SelectedSubject" SortExpression="SelectedSubject" />
                         <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                         <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
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
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LoginId], [Firstname], [Middlename], [Lastname], [Gender], [DOB], [Last School] AS Last_School, [Percentage in 10th] AS Percentage_in_10th, [EmailID], [CurrentAddress], [PerminantAddress], [SelectedSubject], [RollNo], [class] FROM [Student] WHERE ([class] LIKE '%' + @class + '%') ORDER BY [RollNo]">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="12A" Name="class" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                </td>
             </tr>
            </table>
</asp:Content>
