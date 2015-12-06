<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logreg.aspx.cs" Inherits="LabSystem.Logreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 300px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 454px;
        }
        .auto-style6 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style7 {
            width: 332px;
            height: 147px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            height: 16px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="background-color: black">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" Width="81px" ImageUrl="~/photo.jpg" />
        </div>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Login ID="Login1" runat="server" CssClass="auto-style4" Width="334px" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="154px" LoginButtonText="Вход" OnAuthenticate="Login1_Authenticate">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LayoutTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0" class="auto-style7">
                                            <tr>
                                                <td align="center" colspan="2" style="color: White; background-color: #507CD1; font-size: 1.5em; font-weight: bold;">Выполнить вход</td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style8">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Size="Small">Имя пользователя:</asp:Label>
                                                </td>
                                                <td class="auto-style8">
                                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="93px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Поле &quot;Имя пользователя&quot; является обязательным." ToolTip="Поле &quot;Имя пользователя&quot; является обязательным." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Size="Small">Пароль:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="93px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Поле &quot;Пароль&quot; является обязательным." ToolTip="Поле &quot;Пароль&quot; является обязательным." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:CheckBox ID="RememberMe" runat="server" Font-Size="Small" Text="Запомнить учетные данные." />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="auto-style9" colspan="2" style="color: Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">&nbsp;<asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" OnClick="LoginButton0_Click" Text="Регистрация" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" CssClass="auto-style6" Font-Names="Verdana" Font-Size="Small" ForeColor="#284E98" Height="25px" Text="Вход" ValidationGroup="Login1" Width="78px" OnClick="LoginButton_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
