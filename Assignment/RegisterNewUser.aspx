<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterNewUser.aspx.cs" Inherits="Assignment.RegisterNewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 123px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
            width: 123px;
            text-align: right;
        }
        .auto-style5 {
            width: 123px;
            text-align: right;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <strong>Welcome!</strong><br />
            <span class="auto-style7">Please enter the personal details:</span><br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Full Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Fullname is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Name should be less than 50 chars" ForeColor="Red" MaximumValue="50" MinimumValue="1"></asp:RangeValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email ID</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="EmailID is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Invalid EmailID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Date of Birth</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        <asp:Calendar ID="Calendar1" runat="server"  BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        <asp:Button ID="btnDOB" runat="server" OnClick="btnDOB_Click" Text="Get DOB" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" EnableClientScript="False" ErrorMessage="DOB is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Bio</td>
                    <td>
                        <asp:TextBox ID="txtBio" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBio" EnableClientScript="False" ErrorMessage="Bio is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtBio" EnableClientScript="False" ErrorMessage="Size must be less than 2000" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Age</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Button ID="btnCalculateAge" runat="server" OnClick="btnCalculateAge_Click" Text="CalculateAge" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" EnableClientScript="False" ErrorMessage="Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RDList" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="male"></asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:RadioButtonList>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPwd" EnableClientScript="False" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style5">Reenter Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPwd2" EnableClientScript="False" ErrorMessage="confirm the password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" EnableClientScript="False" EnableViewState="False" ErrorMessage="password is not matching" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
            </table>

        </div>
        <p>

            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />

            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </p>
    </form>
</body>
</html>