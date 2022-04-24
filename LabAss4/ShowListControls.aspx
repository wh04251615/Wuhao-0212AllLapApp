<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowListControls.aspx.cs" Inherits="LabAss4.ShowListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ListBox<br />
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username"></asp:ListBox>
            <br />
            DropDownList<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
            </asp:DropDownList>
            <br />
            BulletedList<br />
            <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
            </asp:BulletedList>
            <br />
            CheckBoxList<br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
            </asp:CheckBoxList>
            <br />
            RadioButtonList<br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
            </asp:RadioButtonList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDatabseConnectionString %>" SelectCommand="SELECT [password], [Username] FROM [Login]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
