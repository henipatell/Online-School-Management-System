<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updatemarks.aspx.cs" Inherits="Online_School_Management_System.updatemarks" %>
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
                <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 237px; top: 309px; position: absolute; height: 18px; width: 1423px; margin-top: 4px;">1st Semester<br />
                </p>
                <br />
 
                <p style="font-style:normal; font-family:Aharoni; z-index: 1; left: 242px; top: 515px; position: absolute; height: 18px; width: 1423px; margin-top: 4px;">2nd Semester<br />
                </p>
                <br/><br/>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoginId,Class,RollNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 241px; top: 356px; position: absolute; height: 133px; width: 187px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="LoginId" HeaderText="LoginId" SortExpression="LoginId" />
                        <asp:BoundField DataField="Class" HeaderText="Class" ReadOnly="True" SortExpression="Class" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                        <asp:BoundField DataField="Maths" HeaderText="Maths" SortExpression="Maths" />
                        <asp:BoundField DataField="Physics" HeaderText="Physics" SortExpression="Physics" />
                        <asp:BoundField DataField="Chemistry" HeaderText="Chemistry" SortExpression="Chemistry" />
                        <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                        <asp:BoundField DataField="Computer" HeaderText="Computer" SortExpression="Computer" />
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoginId,Class,RollNo" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 243px; top: 564px; position: absolute; height: 133px; width: 187px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="LoginId" HeaderText="LoginId" ReadOnly="True" SortExpression="LoginId" />
                        <asp:BoundField DataField="Class" HeaderText="Class" ReadOnly="True" SortExpression="Class" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                        <asp:BoundField DataField="Maths" HeaderText="Maths" SortExpression="Maths" />
                        <asp:BoundField DataField="Physics" HeaderText="Physics" SortExpression="Physics" />
                        <asp:BoundField DataField="Chemistry" HeaderText="Chemistry" SortExpression="Chemistry" />
                        <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                        <asp:BoundField DataField="Computer" HeaderText="Computer" SortExpression="Computer" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Sem1SecondInt.LoginId, Sem1SecondInt.Class, Sem1SecondInt.RollNo, Sem1SecondInt.Maths, Sem1SecondInt.Physics, Sem1SecondInt.Chemistry, Sem1SecondInt.English, Sem1SecondInt.Computer FROM Sem1SecondInt INNER JOIN Student ON Sem1SecondInt.LoginId = Student.LoginId CROSS JOIN Teacher WHERE 
(Teacher.TeachId=@TeachId)" UpdateCommand="UPDATE Sem1SecondInt SET Maths = @Maths, Physics = @Physics, Chemistry = @Chemistry, English = @English, Computer = @Computer FROM Sem2FirstInt CROSS JOIN Teacher WHERE (Sem1SecondInt.LoginId=@LoginId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="TeachId" SessionField="loginid" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Maths" />
                        <asp:Parameter Name="Physics" />
                        <asp:Parameter Name="Chemistry" />
                        <asp:Parameter Name="English" />
                        <asp:Parameter Name="Computer" />
                        <asp:Parameter Name="LoginId" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Sem1FirstInt(Maths, Physics, Chemistry, English, Computer) VALUES (@Maths, @Physics, @Chemistry, @English, @Computer)" SelectCommand="SELECT Sem1FirstInt.LoginId, Sem1FirstInt.Class, Sem1FirstInt.RollNo, Sem1FirstInt.Maths, Sem1FirstInt.Physics, Sem1FirstInt.Chemistry, Sem1FirstInt.English, Sem1FirstInt.Computer FROM Sem1FirstInt INNER JOIN Student ON Sem1FirstInt.LoginId = Student.LoginId CROSS JOIN Teacher WHERE Teacher.TeachId=@TeachId" UpdateCommand="UPDATE Sem1FirstInt SET Maths = @Maths, Physics = @Physics, Chemistry = @Chemistry, English = @English, Computer = @Computer FROM Sem1FirstInt CROSS JOIN Teacher WHERE (Sem1FirstInt.LoginId=@LoginId)">
                    <InsertParameters>
                        <asp:Parameter Name="Maths" />
                        <asp:Parameter Name="Physics" />
                        <asp:Parameter Name="Chemistry" />
                        <asp:Parameter Name="English" />
                        <asp:Parameter Name="Computer" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="TeachId" SessionField="loginid" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Maths" />
                        <asp:Parameter Name="Physics" />
                        <asp:Parameter Name="Chemistry" />
                        <asp:Parameter Name="English" />
                        <asp:Parameter Name="Computer" />
                        <asp:Parameter Name="LoginId" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                </td>
             </tr>
            </table>


</asp:Content>
