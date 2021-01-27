<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Monthly Death Premium Calculation.aspx.vb" Inherits="Test_Ocupation_rating_factor.Monthly_Death_Premium_Calculation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 169px;
        }
        .auto-style3 {
            width: 169px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="tname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tname" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td>
                    <asp:TextBox ID="tage" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tage" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Date of birth</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tdob" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tdob" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Death – Sum Insured</td>
                <td>
                    <asp:TextBox ID="tsuminsured" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tsuminsured" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Occupation</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="doccupation" runat="server" AutoPostBack="True" CausesValidation="True" Height="16px" Width="206px">
                        <asp:ListItem Value="select">select occupation</asp:ListItem>
                        <asp:ListItem>Cleaner</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Author</asp:ListItem>
                        <asp:ListItem>Farmer</asp:ListItem>
                        <asp:ListItem>Mechanic</asp:ListItem>
                        <asp:ListItem>Florist</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Monthly Premium</td>
                <td>
                    <asp:TextBox ID="tpremium" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
