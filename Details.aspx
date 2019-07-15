<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication1.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    

</head>
<body>

    <form id="form1" runat="server">
        <div>

            <table align="center">

                <caption>Date Of Birth Form</caption>

                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="cannot leave the field empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Father Name</td>
                    <td>
                        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="rvfFname" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="cannot leave the field empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mother Name</td>
                    <td>
                        <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvMname" runat="server" ControlToValidate="txtMName" Display="Dynamic" ErrorMessage="cannot leave the field empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="IBtn" runat="server" ImageUrl="~/Iconss/calendar.png" OnClick="IBtn_Click" />
                                <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" NextMonthText="" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged"></asp:Calendar>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblstaus" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
