<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="UserPass" HeaderText="UserPass" SortExpression="UserPass" />
        <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
        <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="UDID" HeaderText="UDID" SortExpression="UDID" />
        <asp:BoundField DataField="TypeCode" HeaderText="TypeCode" SortExpression="TypeCode" />
        <asp:BoundField DataField="CurrentLong" HeaderText="CurrentLong" SortExpression="CurrentLong" />
        <asp:BoundField DataField="Currentlat" HeaderText="Currentlat" SortExpression="Currentlat" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:site11ConnectionString2 %>" SelectCommand="SELECT * FROM [UsersTB]"></asp:SqlDataSource>
</asp:Content>

