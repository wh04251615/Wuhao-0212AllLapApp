﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWebForm.aspx.cs" Inherits="LabAss5.LoginWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCaption" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Georgia" Text="Please Log On"></asp:Label>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Invalid Username"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Invalid Password"></asp:RequiredFieldValidator>
        </p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDatabseConnectionString1 %>" DeleteCommand="DELETE FROM [Login] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Login] ([Username], [password]) VALUES (@Username, @password)" ProviderName="<%$ ConnectionStrings:SampleDatabseConnectionString1.ProviderName %>" SelectCommand="SELECT [Username], [password] FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
