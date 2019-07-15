<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExceptionHandling.aspx.cs" Inherits="WebApplication1.ExceptionHandling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <caption>Division Calculator</caption>
                <tr>
                    <td>Enter 1<sup>st</sup>Number :</td>
                    <td>
                        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Enter 2<sup>nd</sup> Number :</td>
                    <td>
                        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Result of Division</td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" />
                        &nbsp;
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
