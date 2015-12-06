<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="LabSystem.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="background-color: black">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" ImageUrl="~/photo.jpg" PostBackUrl="~/dashboard.aspx" Width="81px" />
        </div>
    
        <asp:Label ID="Label1" runat="server" Text="Личный кабинет"></asp:Label>
    
    </div>
    </form>
</body>
</html>
