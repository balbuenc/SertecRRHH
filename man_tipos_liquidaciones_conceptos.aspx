<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_tipos_liquidaciones_conceptos.aspx.vb" Inherits="man_tipos_liquidaciones_conceptos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 998px;
        }
        .style5
        {
            width: 226px;
        }
        .style9
        {
            width: 168px;
        }
        .style11
        {
            width: 180px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">

        function CopyCheckStateByColumn(cbSelectAll, grid_concepto_tipo_liquidacion) {
            var columnIndex = HeaderCheckBox.parentElement.cellIndex;
            var newState = cbSelectAll.checked;
            ChangeChecksByColumn(grid_concepto_tipo_liquidacion, newState, columnIndex);
        }




        function ChangeAllChecks(grid_concepto_tipo_liquidacion, newState) {
            var tabla = document.getElementById(grid_concepto_tipo_liquidacion);
            celdas = tabla.cells;
            for (i = 0; i < celdas.length - 1; i++) {
                if (celdas[i].firstChild.type == "checkbox"
                 && celdas[i].firstChild.checked != newState) {
                    celdas[i].firstChild.click();
                }
            }
        }
    </script>		
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td style="text-align: center; font-family: 'Trebuchet MS'; font-size: small;">
                        <table align="center" class="style3">
                            <tr>
                                <td class="style4" 
                            style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                            valign="top" id="CheckAll">
                                    Concepto por Tipo de Liquidación&nbsp;&nbsp;&nbsp;
                                </td>
                                <td style="text-align: right">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" Width="32px" 
                                PostBackUrl="~/home.aspx" Height="32px" ToolTip="Volver al Menu Principal" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style3">
                            <tr>
                                <td style="text-align: right" width="400">
                                    &nbsp;</td>
                                <td style="text-align: left" width="250">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right" width="400">
                                    Tipo de Liquidación:</td>
                                <td style="text-align: left" width="250">
                                    <asp:DropDownList ID="ddl_tipo_liquidacion" runat="server" AutoPostBack="True" 
                                        DataSourceID="tipo_liquidaciones_con" DataTextField="descripcion" 
                                        DataValueField="cod_tipo_liquidacion" Width="250px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
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
                                    <asp:Button ID="btn_busca" runat="server" Text="&gt;&gt;" ToolTip="Filtrar" />
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
                        <table align="center" class="style3">
                            <tr>
                                <td width="100">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
                                </td>
                                <td width="235">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="100">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td width="235">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style3">
                            <tr>
                                <td width="220">
                                    &nbsp;</td>
                                <td width="520">
                                    <asp:GridView ID="grid_concepto_tipo_liquidacion" runat="server" 
                                        AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
                                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
                                        DataKeyNames="cod_tipo_liquidacion,cod_empresa,cod_concepto" 
                                        DataSourceID="concepto_tipo_liquidacion_con" ForeColor="Black" GridLines="None" 
                                        Width="517px">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="img_grid_guardar_edit" runat="server" 
                                                        CausesValidation="True" CommandName="Update" Height="16px" 
                                                        ImageUrl="~/images/controles/b_grabar.gif" 
                                                        onclick="img_grid_guardar_edit_Click" Text="Update" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" ImageUrl="~/images/controles/b_cancelar.gif" 
                                                        Text="Cancel" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" 
                                                        CommandName="Edit" ImageUrl="~/images/controles/b_modificar.gif" Text="Edit" />
                                                </ItemTemplate>
                                                <ItemStyle Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Código" SortExpression="codigo">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Concepto" SortExpression="concepto">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("concepto") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("concepto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Aplica" SortExpression="Valida">
                                                <EditItemTemplate>
                                                    <asp:CheckBox ID="Check_edita" runat="server" AutoPostBack="True" 
                                                        Checked='<%# Bind("Valida") %>' oncheckedchanged="Check_edita_CheckedChanged" />
                                                    <br />
                                                    <asp:CheckBox ID="check_valida_todos" runat="server" Enabled="False" 
                                                        Text="Aplicar para Todos" />
                                                    &nbsp;<asp:HiddenField ID="hf_aplica" runat="server" Value='<%# Bind("aplica") %>' />
                                                    <asp:HiddenField ID="hf_aplica_todos" runat="server" />
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:CheckBox ID="CheckBox3" runat="server" />
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="check_item" runat="server" Checked='<%# Bind("Valida") %>' 
                                                        Enabled="False" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="150px" />
                                                <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="cod_concepto" SortExpression="cod_concepto" 
                                                Visible="False">
                                                <EditItemTemplate>
                                                    <asp:Label ID="lb_cod_concepto_edit" runat="server" 
                                                        Text='<%# Eval("cod_concepto") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("cod_concepto") %>'></asp:Label>
                                                </ItemTemplate>
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
                                <td style="text-align: left" valign="top">
                                    <asp:Button ID="ChekAll" runat="server" 
                                        onclientclick="return confirm('Está seguro que desea marcar todos los conceptos?')" 
                                        Text="Marcar Todo" Width="125px" />
                                    <br />
                                    <asp:Button ID="UncheckAll" runat="server" 
                                        onclientclick="return confirm('Está seguro que desea desmarcar todos los conceptos?')" 
                                        Text="Desmarcar Todo" Width="125px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style3">
                            <tr>
                                <td class="style5">
                                    <asp:SqlDataSource ID="concepto_tipo_liquidacion_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                DeleteCommand="DELETE FROM [liquidaciones_conceptos] WHERE [cod_tipo_liquidacion] = @cod_tipo_liquidacion AND [cod_empresa] = @cod_empresa AND [cod_concepto] = @cod_concepto" 
                                InsertCommand="INSERT INTO [liquidaciones_conceptos] ([cod_tipo_liquidacion], [cod_empresa], [cod_concepto], [aplica]) VALUES (@cod_tipo_liquidacion, @cod_empresa, @cod_concepto, @aplica)" 
                                SelectCommand="SELECT liquidaciones_conceptos.cod_tipo_liquidacion, liquidaciones_conceptos.cod_empresa, liquidaciones_conceptos.cod_concepto, CASE liquidaciones_conceptos.aplica WHEN 'SI' THEN 1 WHEN 'NO' THEN 0 END AS Valida, conceptos.descripcion AS concepto, liquidaciones_conceptos.aplica, conceptos.codigo FROM liquidaciones_conceptos INNER JOIN conceptos ON liquidaciones_conceptos.cod_concepto = conceptos.cod_concepto WHERE (liquidaciones_conceptos.cod_empresa = @cod_empresa) AND (liquidaciones_conceptos.cod_tipo_liquidacion = @cod_tipo_liquidacion) AND (conceptos.descripcion LIKE @txt_busca + '%') OR (liquidaciones_conceptos.cod_empresa = @cod_empresa) AND (liquidaciones_conceptos.cod_tipo_liquidacion = @cod_tipo_liquidacion) AND (conceptos.codigo LIKE @txt_busca) ORDER BY liquidaciones_conceptos.aplica DESC, concepto" 
                                
                                
                                
                                        
                                        
                                        
                                        UpdateCommand="UPDATE [liquidaciones_conceptos] SET [aplica] = @aplica WHERE [cod_tipo_liquidacion] = @cod_tipo_liquidacion AND [cod_empresa] = @cod_empresa AND [cod_concepto] = @cod_concepto">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cod_empresa" SessionField="sv_empresa" />
                                            <asp:ControlParameter ControlID="ddl_tipo_liquidacion" 
                                        Name="cod_tipo_liquidacion" PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="txt_busca" Name="txt_busca" 
                                        PropertyName="Text" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="aplica" Type="String" />
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_tipo_liquidacion" Type="Int16" />
                                            <asp:Parameter Name="cod_empresa" Type="Int16" />
                                            <asp:Parameter Name="cod_concepto" Type="Int16" />
                                            <asp:Parameter Name="aplica" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style9">
                                    <asp:SqlDataSource ID="tipo_liquidaciones_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                
                                
                                        SelectCommand="SELECT [cod_tipo_liquidacion], [descripcion] FROM [tipos_liquidaciones]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style11">
                                    &nbsp;</td>
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

