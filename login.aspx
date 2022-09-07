<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .titulo
        {
            font-family: "Trebuchet MS";
            font-size: x-large;
        }
        .style2
        {
            width: 129px;
        }
        .style3
        {
            font-family: "Trebuchet MS";
            font-size: x-large;
            width: 129px;
        }
        .style4
        {
            width: 266px;
        }
        .style5
        {
            font-family: "Trebuchet MS";
            font-size: x-large;
            width: 266px;
        }
        .style6
        {
            width: 378px;
        }
        .style7
        {
            font-family: "Trebuchet MS";
            font-size: x-large;
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                &nbsp;</td>
            <td class="style5" style="text-align: center">
                &nbsp;</td>
            <td class="style7" style="text-align: center">
                &nbsp;</td>
            <td class="titulo" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                &nbsp;</td>
            <td class="style5" style="text-align: center">
                &nbsp;</td>
            <td class="style7" style="text-align: center">
                Enigma HR | Sertec S.R.L.</td>
            <td class="titulo" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td align="center" class="style4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/extras/login3.png" />
            </td>
            <td align="center" class="style6">
                <asp:Login ID="Login1" runat="server" BackColor="#C1CCDB" BorderColor="#293955" 
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop" Width="294px" 
                    DestinationPageUrl="~/home.aspx">
                    <TextBoxStyle Font-Size="0.8em" />
                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                    <LayoutTemplate>
                        <table border="0" cellpadding="4" cellspacing="0" 
                            style="border-collapse:collapse;" width="100%">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" style="width: 295px">
                                        <tr>
                                            <td align="center" colspan="2" 
                                                style="color: White; background-color: #990000; font-size: 0.9em; font-weight: bold;">
                                                Inicio de Sesión</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuario:</asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                    ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                                    ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="color:Red;">
                                                &nbsp;</td>
                                            <td align="center" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                &nbsp;</td>
                                            <td align="right">
                                                <asp:Button ID="LoginButton" runat="server" BackColor="White" 
                                                    BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Text="Ingresar" 
                                                    ValidationGroup="Login1" onclick="LoginButton_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
