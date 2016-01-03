<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="增加" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="删除" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="查询" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test %>" SelectCommand="SELECT * FROM [tb1] WHERE ([name] LIKE '%' + @name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox8" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
