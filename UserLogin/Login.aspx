<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登录</title>
    
</head>
<body>
    <form id="form1" runat="server">
    
        会员登陆<br />
        <br />
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="取消" />
    
    </form>
</body>
</html>
