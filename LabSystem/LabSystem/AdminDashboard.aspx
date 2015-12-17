<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="LabSystem.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <div style="background-color: black">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="81px" ImageUrl="~/photo.jpg" PostBackUrl="~/dashboard.aspx" Width="81px" />
        </div>
    
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Личный кабинет"></asp:Label>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [links] WHERE [Id] = @Id" InsertCommand="INSERT INTO [links] ([name], [task], [link], [mark]) VALUES (@name, @task, @link, @mark)" SelectCommand="SELECT * FROM [links]" UpdateCommand="UPDATE [links] SET [name] = @name, [task] = @task, [link] = @link, [mark] = @mark WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="task" Type="String" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="mark" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="task" Type="String" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="mark" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Имя" SortExpression="name" />
                <asp:BoundField DataField="task" HeaderText="Задание" SortExpression="task" />
                <asp:BoundField DataField="link" HeaderText="Ссылка на работу" SortExpression="link" />
                <asp:BoundField DataField="mark" HeaderText="Оценка" SortExpression="mark" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 25px" Text="Очистить всю таблицу" />
        </div>
    </form>
</body>
</html>
