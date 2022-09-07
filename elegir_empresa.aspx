<%@ Page Language="VB" AutoEventWireup="false" CodeFile="elegir_empresa.aspx.vb" Inherits="elejir_empresa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 150px;
        }
        .estilo
        {
            font-family: "Trebuchet MS";
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td align="center" style="text-align: left">
                <table>
                    <tr>
                        <td style="font-family: 'Trebuchet MS'; font-size: 9pt; color: #006600">
                            Usuario Conectado:</td>
                        <td style="font-family: 'Trebuchet MS'; font-weight: bold; font-size: 9pt; color: #006600;">
                            <asp:Label ID="lb_user" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <table style="width: 256px">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" 
                            
                            style="border: 1px dashed #000000; font-family: 'Trebuchet MS'; font-size: medium; font-weight: bold">
                            Seleccione una Empresa</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:GridView ID="grilla_empresas" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" DataKeyNames="cod_empresa" DataSourceID="empresas_con" 
                                ForeColor="Black" GridLines="None" Width="492px" CssClass="estilo">
                                <Columns>
                                    <asp:CommandField SelectText="Elegir" ShowSelectButton="True" />
                                    <asp:TemplateField HeaderText="Codigo" SortExpression="cod_empresa">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("cod_empresa") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("cod_empresa") %>' 
                                                Width="60px"></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Empresa" SortExpression="descripcion">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="R.U.C." SortExpression="ruc">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ruc") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ruc") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Registro MJT" SortExpression="registro_mjt">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("registro_mjt") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("registro_mjt") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <EmptyDataTemplate>
                                    No se Registran Empresas.
                                </EmptyDataTemplate>
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="lb_mensaje" runat="server" CssClass="estilo" ForeColor="#CC3300" 
                                Height="20px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style1">
                    <tr>
                        <td align="right">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/procesar.png" 
                                ToolTip="Aceptar" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <asp:ImageButton ID="ImageButton2" runat="server"
                                ImageUrl="~/images/controles/salir.png" ToolTip="Salir del Sistema" 
                                 />
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right" class="style2" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:SqlDataSource ID="empresas_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT [cod_empresa], [descripcion], [ruc], [registro_mjt] FROM [empresas]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
