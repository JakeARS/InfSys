<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="LabSystem.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style30 {
            height: 21px;
        }
        .auto-style31 {
            width: 117px;
            height: 22px;
        }
        .auto-style35 {
            height: 25px;
        }
        .auto-style36 {
            width: 117px;
            height: 25px;
        }
        .auto-style37 {
            font-size: small;
            height: 22px;
        }
        .auto-style38 {
            width: 100%;
            height: 159px;
        }
        .auto-style40 {
            height: 24px;
        }
        .auto-style41 {
            width: 117px;
            height: 24px;
        }
        .auto-style42 {
            height: 82px;
        }
        .auto-style43 {
            height: 136px;
        }
        .auto-style44 {
            height: 136px;
            width: 327px;
        }
        .auto-style45 {
            height: 149px;
            width: 317px;
        }
        .auto-style46 {
            height: 136px;
            width: 300px;
        }
        .auto-style47 {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
    
        <div class="auto-style42" style="background-color: black">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" ImageUrl="~/photo.jpg" Width="81px" />
        </div>
        <br />
        <br />
        <table class="auto-style38">
            <tr>
                <td class="auto-style46">
                    </td>
                <td class="auto-style44" style="vertical-align: top; border-collapse: collapse; background-color: #eff3fb; border-color: #b5c7de; border-style: solid; border-width: 1px" class="auto-style45">
                   <table align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse; background-color: #eff3fb;" class="auto-style45">
                                            <tr>
                                                <td align="center" colspan="2" style="color: White; background-color: #507CD1; font-size: 1.0em; font-weight: bold;" class="auto-style47">Зарегистрировать нового пользователя</td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style35">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Size="Small">Имя пользователя:</asp:Label>
                                                </td>
                                                <td class="auto-style36">
                                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="93px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Поле &quot;Имя пользователя&quot; является обязательным." ToolTip="Поле &quot;Имя пользователя&quot; является обязательным." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style40">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Size="Small">Пароль:</asp:Label>
                                                </td>
                                                <td class="auto-style41">
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="93px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Поле &quot;Пароль&quot; является обязательным." ToolTip="Поле &quot;Пароль&quot; является обязательным." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                 <td align="right" class="auto-style37">
                                                    <asp:Label ID="PasswordLabel0" runat="server" AssociatedControlID="Password" Font-Size="Small">Повторите пароль:</asp:Label>
                                                 </td>
                                                <td class="auto-style31">
                                                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="0.8em" TextMode="Password" Width="93px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Поле &quot;Пароль&quot; является обязательным." ToolTip="Поле &quot;Пароль&quot; является обязательным." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="auto-style30" colspan="2" style="color: Red;">
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">&nbsp;<asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" OnClick="LoginButton0_Click" Text="Регистрация" />
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                <td class="auto-style43">
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
