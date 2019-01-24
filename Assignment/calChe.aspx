<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calChe.aspx.cs" Inherits="Assignment.calChe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Date of Birth:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
