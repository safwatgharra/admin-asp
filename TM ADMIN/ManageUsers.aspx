<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UserID" Width="70%" Height="50%" >
            <Columns>
                <asp:BoundField DataField="TypeCode" HeaderText="TypeCode" SortExpression="TypeCode" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserPass" HeaderText="UserPass" SortExpression="UserPass" />
                <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
                <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:site11ConnectionString %>" SelectCommand="SELECT [TypeCode], [UserID], [UserPass], [UserFName], [UserLName], [PhoneNumber] FROM [UsersTB] WHERE ([TypeCode] &lt;&gt; @TypeCode)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="TypeCode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       
    </div>

    
</asp:Content>
