<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HazardsReports.aspx.cs" Inherits="HazardsReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h3>Hazards Reports</h3>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="50%" Width="70%">
    <Columns>
        <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
        <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
        <asp:BoundField DataField="ReportDate" HeaderText="ReportDate" SortExpression="ReportDate" />
        <asp:BoundField DataField="ReportType" HeaderText="ReportType" SortExpression="ReportType" />
        <asp:BoundField DataField="ReportDescription" HeaderText="ReportDescription" SortExpression="ReportDescription" />
        <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
    </Columns>
        
</asp:GridView>
    </p>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:site11ConnectionString %>" SelectCommand="SELECT * FROM [HZRD_REP] ORDER BY [UserFName]"></asp:SqlDataSource>
</asp:Content>

