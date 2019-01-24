<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="Assignment.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 193px;
            text-align: right;
        }
        .auto-style3 {
            margin-left: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">EmailID</td>
                <td>
                    <asp:TextBox ID="txtEmailID" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="auto-style3">
            <asp:Button ID="btn_login" runat="server" OnClick="Button1_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
