<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Final.aspx.cs" Inherits="Assignment.Final" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 219px;
        }
        .auto-style4 {
            width: 132px;
            height: 23px;
        }
        .auto-style5 {
            width: 219px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 132px;
            height: 26px;
        }
        .auto-style8 {
            width: 219px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 132px;
            height: 42px;
        }
        .auto-style11 {
            width: 219px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome<br />
            Please Register<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">FullName</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Full Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Size should be less than 20" ValidationExpression="^[A-Za-z ]{1,20}$"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">EmailID</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="EmailID is Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Please Enter a valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Date of Birth</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        <asp:Button ID="txt_DOB" runat="server" OnClick="txt_DOB_Click" Text="Get DOB" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" EnableClientScript="False" ErrorMessage="DOB is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Bio</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtBio" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBio" EnableClientScript="False" ErrorMessage="Bio is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Age</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:Button ID="btnCalculateAge" runat="server" OnClick="btnCalculateAge_Click" Text="CalculateAge" />
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" EnableClientScript="False" ErrorMessage="Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="RD_List" runat="server" OnSelectedIndexChanged="RD_List_SelectedIndexChanged">
                            <asp:ListItem>male</asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RD_List" EnableClientScript="False" ErrorMessage="Gender is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPwd" EnableClientScript="False" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Re-enter Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPwd2" EnableClientScript="False" ErrorMessage="Re-Enter Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" EnableClientScript="False" ErrorMessage="Please Confirm your password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="brn_Register" runat="server" OnClick="brn_Register_Click" Text="Register" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btn_Clear" runat="server" OnClick="btn_Clear_Click" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
