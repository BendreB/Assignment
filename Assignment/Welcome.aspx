<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Assignment.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            text-decoration: underline;
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style3"><strong>WELLCOME!</strong></span><br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="RegisterUser" Width="120px" PostBackUrl="~/RegisterUser.aspx"/>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="LoginUser" Width="124px" PostBackUrl="~/LoginUser.aspx"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
