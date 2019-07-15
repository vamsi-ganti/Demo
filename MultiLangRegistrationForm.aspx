<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiLangRegistrationForm.aspx.cs" Inherits="WebApplication1.MultiLangRegistrationForm" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="lbltitle" runat="server" Text="RegistrationForm" meta:resourcekey="lbltitleResource1"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:DropDownList ID="ddlLang" runat="server" AutoPostBack="True" meta:resourcekey="ddlLangResource1">
                            <asp:ListItem Text="English" Value="en-US" meta:resourcekey="ListItemResource1"/>
                            <asp:ListItem Text="français" Value="fr" meta:resourcekey="ListItemResource2"/>
                            <asp:ListItem Text="हिंदी" Value="hi" meta:resourcekey="ListItemResource3"/>
                            <asp:ListItem Text="తెలుగు" Value="te" meta:resourcekey="ListItemResource4"/>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblUser" runat="server" Text="User Id:" meta:resourcekey="lblUserResource1"/></td>
                    <td> <asp:TextBox ID="txtUser" runat="server" meta:resourcekey="txtUserResource1"/></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPwd" runat="server" text="Password" meta:resourcekey="lblPwdResource1"/></td>
                    <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" meta:resourcekey="txtPwdResource1"/></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblName" runat="server" Text="Name:" meta:resourcekey="lblNameResource1"/></td>
                    <td><asp:TextBox ID="txtName" runat="server" meta:resourcekey="txtNameResource1"/></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhone" runat="server" Text="Phone no:" meta:resourcekey="lblPhoneResource1"/></td>
                    <td><asp:TextBox ID="txtPhone" runat="server" meta:resourcekey="txtPhoneResource1"/></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email Id:" meta:resourcekey="lblEmailResource1"/></td>
                    <td><asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtEmailResource1"/></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAddress" runat="server" Text="Address:" meta:resourcekey="lblAddressResource1"/></td>
                    <td><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" meta:resourcekey="txtAddressResource1"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                      <asp:Button ID="btnRegister" runat="server" Text="Register" meta:resourcekey="btnRegisterResource1"/>
                     <asp:Button ID="btnReset" runat="server" Text="Reset" meta:resourcekey="btnResetResource1" /> 

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
