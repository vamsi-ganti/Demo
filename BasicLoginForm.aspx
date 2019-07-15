<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicLoginForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td>UserName:</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" runat="server">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
                <tr><td colspan="2">
                        
                    <asp:Label ID="Label1" runat="server" Text="lblstaus"></asp:Label>
                        
                    </td>
                    
                     
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
