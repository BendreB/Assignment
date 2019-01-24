<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Assignment.Register_User" %>

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
        .auto-style8 {
            width: 123px;
            text-align: right;
            height: 34px;
        }
        .auto-style9 {
            height: 34px;
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
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Please enter full name" ForeColor="Red">Fullname is Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFullName" EnableClientScript="False" ErrorMessage="Out of Range" ForeColor="Red" ValidationExpression="^[A-Za-z ]{1,50}$"></asp:RegularExpressionValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email ID</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Please enter email id" ForeColor="Red">EmailID is Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Please enter a valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Check emailID</asp:RegularExpressionValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" EnableClientScript="False" ErrorMessage="Please enter DOB" ForeColor="Red">DOB is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Bio</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtBio" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBio" EnableClientScript="False" ErrorMessage="Please Enter Details" ForeColor="Red">Bio is Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtBio" EnableClientScript="False" ErrorMessage="Out Of Range" ForeColor="Red" ValidationExpression="^[A-Za-z ]{1,2000}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Age</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtAge" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Button ID="btnCalculateAge" runat="server" OnClick="btnCalculateAge_Click" Text="CalculateAge" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" EnableClientScript="False" ErrorMessage="Please enter age" ForeColor="Red">Age is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RDList" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="male"></asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:RadioButtonList>
&nbsp;&nbsp; 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RDList" EnableClientScript="False" ErrorMessage="Please Enter Gender" ForeColor="Red">Gender is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPwd" EnableClientScript="False" ErrorMessage="Please Enter your Password" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style5">Reenter Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPwd2" EnableClientScript="False" ErrorMessage="Please re enter your password" ForeColor="Red">Confirm the password</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" EnableClientScript="False" EnableViewState="False" ErrorMessage="Please Enter A valid password" ForeColor="Red">Re enter password please</asp:CompareValidator>
                    </td>
                </tr>
            </table>

        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </p>
    </form>
</body>
</html>
