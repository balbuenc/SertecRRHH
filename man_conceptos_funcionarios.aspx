<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_conceptos_funcionarios.aspx.vb" Inherits="coceptos_funcionarios" %>

<%@ Register assembly="Infragistics35.WebUI.UltraWebListbar.v8.3, Version=8.3.20083.1009, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.UltraWebListbar" tagprefix="iglbar" %>
<%@ Register assembly="ComponentArt.Web.UI" namespace="ComponentArt.Web.UI" tagprefix="ComponentArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 94%;
            height: 39px;
        }
        .style5
        {
            width: 79%;
            height: 60px;
        }
        .style20
        {
            width: 91%;
        }
        .style24
        {
            width: 100%;
        }
        .style25
        {
            width: 32px;
        }
        .style26
        {
            width: 624px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td style="text-align: center">
                        <table width="100%">
                            <tr>
                                <td 
                            valign="top" align="right" width="100%">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                        ToolTip="Volver al Menu Principal" Width="32px" />
                                </td>
                            </tr>
                        </table>
                        <table class="style24">
                            <tr>
                                <td style="font-family: 'Trebuchet MS'; font-size: small">
                                    <table align="center" class="style5">
                                        <tr>
                                            <td class="style25" 
                                                style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                                valign="top">
                                                &nbsp;</td>
                                            <td class="style26" 
                                                style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                                valign="top">
                                                Conceptos por Funcionarios</td>
                                            <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                                valign="top">
                                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                                    ImageUrl="~/images/controles/find.png" 
                                                    onclientclick="var wBusqueda = window.open('busca_funcionarios_conceptos_funcionarios.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                                    ToolTip="Buscar Funcionario" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style25" valign="top">
                                                &nbsp;</td>
                                            <td class="style26" valign="top">
                                                <asp:FormView ID="form_funcionarios" runat="server" DataSourceID="funcionarios" 
                                                    Height="16px" Width="100%">
                                                    <EditItemTemplate>
                                                        Funcionario:
                                                        <asp:TextBox ID="FuncionarioTextBox" runat="server" 
                                                            Text='<%# Bind("Funcionario") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        Funcionario:
                                                        <asp:TextBox ID="FuncionarioTextBox0" runat="server" 
                                                            Text='<%# Bind("Funcionario") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                            CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="FuncionarioLabel" runat="server" Font-Size="X-Large" 
                                                            ForeColor="#3366FF" Text='<%# Bind("Funcionario") %>' Width="100%" />
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style25" valign="top">
                                                &nbsp;</td>
                                            <td valign="top">
                                                &nbsp;</td>
                                            <td valign="top">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <table align="center" class="style24">
                                        <tr>
                                            <td style="text-align: right" width="365">
                                                Tipo Liquidación:</td>
                                            <td style="text-align: left" width="250">
                                                <asp:DropDownList ID="ddl_tipo_liquidacion" runat="server" AutoPostBack="True" 
                                                    DataSourceID="tipos_liquidaciones_con" DataTextField="descripcion" 
                                                    DataValueField="cod_tipo_liquidacion" 
                                                    style="text-align: left; margin-left: 0px" Width="250px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="text-align: left">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right">
                                                Filtre por Código o Concepto:</td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txt_busca" runat="server" Width="244px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:Button ID="btn_buscar" runat="server" Text="&gt;&gt;" ToolTip="Filtrar" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <table align="center" class="style24">
                                        <tr>
                                            <td width="190">
                                                &nbsp;</td>
                                            <td align="center" width="475">
                                                <asp:GridView ID="grid_concepto_funcionario" runat="server" AllowPaging="True" 
                                                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                                    BorderWidth="1px" CellPadding="2" 
                                                    DataKeyNames="cod_tipo_liquidacion,cod_empresa,cod_concepto,cod_funcionario" 
                                                    DataSourceID="conceptos_funcionarios_con" ForeColor="Black" GridLines="None" 
                                                    style="text-align: right" Width="475px">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:ImageButton ID="img_modifica" runat="server" CausesValidation="True" 
                                                                    CommandName="Update" Height="16px" ImageUrl="~/images/controles/b_grabar.gif" 
                                                                    onclick="img_modifica_Click" Text="Update" />
                                                                &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                                                                    CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                                    Text="Cancel" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" 
                                                                    CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Codigo" SortExpression="codigo">
                                                            <EditItemTemplate>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" Width="60px" />
                                                            <ItemStyle HorizontalAlign="Center" Width="60px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Concepto" SortExpression="concepto">
                                                            <EditItemTemplate>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("concepto") %>'></asp:Label>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("concepto") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Left" Width="350px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="350px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Aplica" SortExpression="aplica">
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="check_edita" runat="server" Checked='<%# Bind("valida") %>' />
                                                                <asp:HiddenField ID="hf_aplica" runat="server" Value='<%# Bind("aplica") %>' />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="check_item" runat="server" Checked='<%# Bind("valida") %>' 
                                                                    Enabled="False" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="Tan" />
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                        HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                </asp:GridView>
                                            </td>
                                            <td align="left" valign="top" width="300">
                                                <asp:Button ID="checkall" runat="server" 
                                                    onclientclick="return confirm('Está seguro que desea marcar todos los conceptos?')" 
                                                    Text="Marcar Todos" Width="125px" />
                                                <br />
                                                <asp:Button ID="uncheckall" runat="server" 
                                                    onclientclick="return confirm('Está seguro que desea desmarcar todos los conceptos?')" 
                                                    Text="Desmarcar Todo" Width="125px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style20">
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="conceptos_funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [funcionarios_conceptos] WHERE [cod_tipo_liquidacion] = @cod_tipo_liquidacion AND [cod_empresa] = @cod_empresa AND [cod_concepto] = @cod_concepto AND [cod_funcionario] = @cod_funcionario" 
                    InsertCommand="INSERT INTO [funcionarios_conceptos] ([cod_tipo_liquidacion], [cod_empresa], [cod_concepto], [cod_funcionario], [aplica]) VALUES (@cod_tipo_liquidacion, @cod_empresa, @cod_concepto, @cod_funcionario, @aplica)" 
                    SelectCommand="SELECT funcionarios_conceptos.cod_tipo_liquidacion, funcionarios_conceptos.cod_empresa, funcionarios_conceptos.cod_concepto, funcionarios_conceptos.cod_funcionario, CASE funcionarios_conceptos.aplica WHEN 'SI' THEN 1 WHEN 'NO' THEN 0 END AS valida, empresas.descripcion AS empresa, conceptos.descripcion AS concepto, funcionarios_conceptos.aplica, funcionarios_conceptos.estado_concepto, conceptos.codigo FROM funcionarios_conceptos INNER JOIN empresas ON funcionarios_conceptos.cod_empresa = empresas.cod_empresa INNER JOIN conceptos ON funcionarios_conceptos.cod_concepto = conceptos.cod_concepto WHERE (funcionarios_conceptos.cod_funcionario LIKE @campo) AND (funcionarios_conceptos.cod_tipo_liquidacion = @ddl_tipo_liquidacion) AND (conceptos.descripcion LIKE @txt_busca + '%') AND (funcionarios_conceptos.estado_concepto = 'A') OR (funcionarios_conceptos.cod_funcionario LIKE @campo) AND (funcionarios_conceptos.cod_tipo_liquidacion = @ddl_tipo_liquidacion) AND (funcionarios_conceptos.estado_concepto = 'A') AND (conceptos.codigo LIKE @txt_busca + '%') ORDER BY funcionarios_conceptos.aplica DESC, concepto" 
                    
                                
                                
                                
                                
                                        
                                        UpdateCommand="UPDATE funcionarios_conceptos SET aplica =@aplica 

WHERE (cod_tipo_liquidacion = @cod_tipo_liquidacion) 

AND (cod_empresa = @cod_empresa) 

AND (cod_concepto = @cod_concepto) 

AND (cod_funcionario = @cod_funcionario)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                                            <asp:ControlParameter ControlID="ddl_tipo_liquidacion" 
                            Name="ddl_tipo_liquidacion" PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="txt_busca" Name="txt_busca" 
                                                PropertyName="Text" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="aplica" Type="String" />
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                            <asp:Parameter Name="aplica" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="funcionarios" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    
                    SelectCommand="SELECT  apellidos + ' , ' + nombres AS Funcionario FROM funcionarios
WHERE (cod_funcionario LIKe @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="tipos_liquidaciones_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                SelectCommand="SELECT [descripcion], [cod_tipo_liquidacion] FROM [tipos_liquidaciones]
WHERE cod_empresa = @cod_empresa ">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="empresa_con" runat="server"></asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

