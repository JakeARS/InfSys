<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="LabSystem.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 83px;
            margin-bottom: 23px;
        }
        .auto-style2 {
            width: 201px;
            height: 51px;
        }
        .auto-style3 {
            width: 201px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
        .auto-style5 {
            height: 51px;
        }
        .auto-style7 {
            height: 19px;
            width: 566px;
        }
        .auto-style8 {
            height: 51px;
            width: 566px;
        }
        .auto-style9 {
            height: 19px;
            width: 198px;
        }
        .auto-style10 {
            height: 51px;
            width: 198px;
        }
        .auto-style11 {
            width: 201px;
            height: 44px;
        }
        .auto-style12 {
            height: 44px;
            width: 566px;
        }
        .auto-style13 {
            height: 44px;
            width: 198px;
        }
        .auto-style14 {
            height: 44px;
        }
        .auto-style15 {
            width: 201px;
            height: 47px;
        }
        .auto-style16 {
            height: 47px;
            width: 566px;
        }
        .auto-style17 {
            height: 47px;
            width: 198px;
        }
        .auto-style18 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="background-color: black">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" ImageUrl="~/photo.jpg" PostBackUrl="~/dashboard.aspx" Width="81px" />
        </div>
    
        <asp:Label ID="Label1" runat="server" Text="Личный кабинет"></asp:Label>
    
        <br />
        <br />
    
    </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Сдать работу</td>
            <td class="auto-style7"></td>
            <td class="auto-style9"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">Задание&nbsp;
                <asp:TextBox ID="task" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">Ссылка на работу:&nbsp; <asp:TextBox ID="linktolab" runat="server" Width="416px"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Message" runat="server" Width="437px"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="accept" runat="server" OnClick="accept_Click" Text="Подтвердить" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Никнейм" SortExpression="name" />
                <asp:BoundField DataField="task" HeaderText="Задание" SortExpression="task" />
                <asp:BoundField DataField="link" HeaderText="Ссылка на задание" SortExpression="link" />
                <asp:BoundField DataField="mark" HeaderText="Оценка" SortExpression="mark" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [links]"></asp:SqlDataSource>
    </form>
    </body>
</html>
