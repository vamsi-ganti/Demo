<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="WebApplication1.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color:green;color:orangered;text-align:center">ErrorPage</h1>
            <font>There is a error in the application and the details of error are:
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"/>
            </font>
        </div>
    </form>
</body>
</html>
