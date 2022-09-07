<%@ Page Language="VB" AutoEventWireup="false" CodeFile="busca_funcionarios_historial_salarios.aspx.vb" Inherits="busca_funcionarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script language="javascript">
        function Seleccionar(id)
        {
            window.opener.location.href = "man_historial_salarios.aspx?cod_funcionario="+id;
            window.close();
        }
    </script>
<base target="_parent" />

    <title>Buscador de Funcionarios</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .estilo
        {
            font-family: "Trebuchet MS";
            font-size: small;
        }
        .style4
        {
            width: 60px;
        }
        </style>
</head>
<body background="images/fondo15.jpg">
    <form id="form1" runat="server">
    
    <table class="style1">
        <tr>
            <td align="center">
                <table class="estilo">
                    <tr>
                        <td align="center">
                            Busque por Codigo o Apellido:</td>
                        <td>
                            <asp:TextBox ID="txt_campo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        <asp:ImageButton ID="ib_buscar" runat="server" 
                            ImageUrl="~/images/controles/find.png" ToolTip="Buscar" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                        <asp:GridView ID="grilla_funcionarios" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="cod_funcionario" DataSourceID="funcionarios_con" 
                            AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
                            CssClass="estilo">
                            <Columns>
                                <asp:CommandField SelectText="Elegir" ShowSelectButton="True" />
                                <asp:BoundField DataField="cod_funcionario" HeaderText="cod_funcionario" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="cod_funcionario" 
                                    Visible="False" />
                                <asp:BoundField DataField="codigo" HeaderText="Codigo" 
                                    SortExpression="codigo" >
                                <HeaderStyle Width="80px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="funcionario" HeaderText="Funcionario" 
                                    ReadOnly="True" SortExpression="funcionario" >
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                <table class="style3">
                                    <tr>
                                        <td valign="bottom">
                                            No se han econtrado coincidencias.
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </EmptyDataTemplate>
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        </asp:GridView>
                    </td>
        </tr>
        <tr>
            <td align="center">
                            <asp:Label ID="lb_mensaje" runat="server" CssClass="estilo" ForeColor="#CC3300" 
                                Height="20px"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td align="center">
                        <table>
                            <tr>
                                <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/controles/procesar.png" ToolTip="Aceptar" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/controles/salir.png" PostBackUrl="~/home.aspx" ToolTip="Cancelar" 
                                        onclientclick="window.close()" />
                                </td>
                            </tr>
                        </table>
                    </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
            <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                
                
                
                
                                
                                
                                SelectCommand="SELECT cod_funcionario, codigo, ISNULL(apellidos, ' ') + ', ' + ISNULL(nombres, ' ') AS funcionario FROM funcionarios WHERE (cod_empresa = @cod_empresa) AND (apellidos LIKE @campo + '%') AND (estado = 'A') AND (tipo_remuneracion = 'M') OR (cod_empresa = @cod_empresa) AND (codigo LIKE @campo) AND (estado = 'A') AND (tipo_remuneracion = 'M')">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="cod_empresa" 
                        SessionField="sv_empresa" />
                    <asp:ControlParameter ControlID="txt_campo" Name="campo" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
