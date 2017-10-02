<%@ Page Title="Attendance Report" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeFile="AttendanceReports.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Attendance Reports</h3>


<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="WorkDayDate" HeaderText="WorkDayDate" SortExpression="WorkDayDate" />
            <asp:BoundField DataField="WorkStart" HeaderText="WorkStart" SortExpression="WorkStart" />
            <asp:BoundField DataField="WorkEnd" HeaderText="WorkEnd" SortExpression="WorkEnd" />
            <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
            <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:site11ConnectionString %>" SelectCommand="SELECT * FROM [ATT_REP] ORDER BY [UserFName]"></asp:SqlDataSource>
</p>

    
</asp:Content>
