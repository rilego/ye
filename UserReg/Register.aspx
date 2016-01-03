<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width:40%; text-align: left;" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" class="td_content">
                <asp:Label ID="lblRegisterDemo" runat="server" Font-Bold="True" Text="[用户注册]"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblUsername" runat="server" Text="用户名："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox_content"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqtxtUsername" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="必须填写用户名">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblPwd" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                    CssClass="textbox_content"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqtxtPwd" runat="server" 
                    ControlToValidate="txtPwd" ErrorMessage="必须填写密码">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblRePwd" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password" 
                    CssClass="textbox_content"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqtxtRePwd" runat="server" 
                    ControlToValidate="txtRePwd" ErrorMessage="必须填写确认密码" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="comPwd" runat="server" 
                    ControlToCompare="txtPwd" ControlToValidate="txtRePwd" 
                    ErrorMessage="确认密码与密码不相同" Display="Dynamic">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblName" runat="server" Text="姓名："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox_content"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqtxtName" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="必须填写姓名">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblSex" runat="server" Text="性别："></asp:Label>
            </td>
            <td class="td_content">
                <asp:RadioButtonList ID="radioSex" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblAge" runat="server" Text="年龄："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtAge" runat="server" CssClass="textbox_content"></asp:TextBox>
                <asp:RangeValidator ID="rantxtAge" runat="server" 
                    ControlToValidate="txtAge" ErrorMessage="必须填写有效的年龄" MaximumValue="100" 
                    MinimumValue="1" Type="Integer">*(1~100)</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblEmail" runat="server" Text="Email："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox_content"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="必须填写有效的Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">例:John@123.com</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="lblQQ" runat="server" Text="QQ："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtQQ" runat="server" CssClass="textbox_content"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtQQ" ErrorMessage="必须是有效的QQ号码" 
                    ValidationExpression="\d{5,12}">例:10000</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnOK" runat="server" Text="注 册" onclick="btnOK_Click" />
&nbsp;
                <input id="Reset1" type="reset" value="重 置" /><asp:ValidationSummary 
                    ID="valError" runat="server" ShowMessageBox="True" 
                    ShowSummary="False" />
            </td>
        </tr>
        </table>    
    </div>
    </form>
</body>
</html>
