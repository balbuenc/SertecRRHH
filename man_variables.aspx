<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_variables.aspx.vb" Inherits="man_variables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 99%;
            height: 242px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style3">
                <tr>
                    <td align="center" 
                style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: right;" 
                valign="top">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                            ToolTip="Volver al Menu Principal" />
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                valign="top">
                        Variables</td>
                </tr>
                <tr>
                    <td align="center" 
                style="font-family: 'Trebuchet MS'; font-size: small; font-weight: normal" 
                valign="top">
                        <table align="center" class="style5" 
                    style="font-family: 'Trebuchet MS'; font-size: small">
                            <tr>
                                <td valign="top">
                                    <table align="center" style="width: 510px">
                                        <tr>
                                            <td style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder" 
                                                valign="top" width="100%">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <table align="center" class="style3">
                                        <tr>
                                            <td style="text-align: right" width="345">
                                                Filtre por Descripción:</td>
                                            <td style="text-align: left" width="250">
                                                <asp:TextBox ID="txt_filtra" runat="server" Width="250px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:Button ID="buscar0" runat="server" Text="&gt;&gt;" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:FormView ID="form_variables" runat="server" AllowPaging="True" 
                                        CellPadding="4" DataKeyNames="cod_variable" DataSourceID="variables_con" 
                                        ForeColor="#333333" Height="232px" Width="885px">
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <EditItemTemplate>
                                            <table align="center" style="width: 812px">
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Codigo:</td>
                                                    <td style="text-align: left" width="350" height="50">
                                                        <asp:Label ID="cod_variableLabel1" runat="server" 
                                                            Text='<%# Eval("cod_variable") %>' />
                                                    </td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Descripción:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="descripcionTextBox" runat="server" Height="45px" 
                                                            Text='<%# Bind("descripcion") %>' TextMode="MultiLine" Width="350px" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        Abreviado:</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="abreviadoTextBox" runat="server" 
                                                            Text='<%# Bind("abreviado") %>' Width="100px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Select Campo:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="select_campoTextBox" runat="server" 
                                                            Text='<%# Bind("select_campo") %>' Width="350px" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        From Tabla:</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="from_tablaTextBox" runat="server" 
                                                            Text='<%# Bind("from_tabla") %>' Width="100px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Where Condición:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="where_condicionTextBox" runat="server" Height="45px" 
                                                            Text='<%# Bind("where_condicion") %>' TextMode="MultiLine" Width="350px" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        Campo Funcionario:</td>
                                                    <td style="text-align: left">
                                                        <asp:RadioButtonList ID="rb_edita" runat="server" RepeatDirection="Horizontal" 
                                                            SelectedValue='<%# Bind("campo_funcionario") %>'>
                                                            <asp:ListItem Value="S">SI</asp:ListItem>
                                                            <asp:ListItem Value="N">NO</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                    </td>
                                                    <td style="text-align: left">
                                                    </td>
                                                    <td width="160">
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td width="200">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" ImageUrl="~/images/controles/guardar.png" Text="Update" 
                                                            ToolTip="Guardar" />
                                                    </td>
                                                    <td width="200">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <table align="center" style="width: 812px">
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left" width="350">
                                                        &nbsp;</td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                    <td style="text-align: left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Descripción:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="descripcionTextBox" runat="server" 
                                                            Text='<%# Bind("descripcion") %>' TextMode="MultiLine" Width="350px" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: right">
                                                        Abreviado:</td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="abreviadoTextBox" runat="server" 
                                                            Text='<%# Bind("abreviado") %>' Width="130px" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:RequiredFieldValidator ID="rv_abreviado" runat="server" 
                                                            ControlToValidate="abreviadoTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Select Campo:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="select_campoTextBox" runat="server" 
                                                            Text='<%# Bind("select_campo") %>' Width="350px" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:RequiredFieldValidator ID="rv_select_campo" runat="server" 
                                                            ControlToValidate="select_campoTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: right">
                                                        From Tabla:</td>
                                                    <td style="text-align: left" width="130">
                                                        <asp:TextBox ID="from_tablaTextBox" runat="server" 
                                                            Text='<%# Bind("from_tabla") %>' Width="130px" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: left" width="4px">
                                                        <asp:RequiredFieldValidator ID="rv_from_tabla" runat="server" 
                                                            ControlToValidate="from_tablaTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style17" style="text-align: right">
                                                        Where Condición:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:TextBox ID="where_condicionTextBox" runat="server" 
                                                            Text='<%# Bind("where_condicion") %>' TextMode="MultiLine" Width="350px" 
                                                            style="font-family: 'Trebuchet MS'" />
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:RequiredFieldValidator ID="rv_where_condicion" runat="server" 
                                                            ControlToValidate="where_condicionTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td style="text-align: right">
                                                        Campo Funcionario:</td>
                                                    <td style="text-align: left" valign="middle">
                                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("campo_funcionario") %>'>
                                                            <asp:ListItem Value="S">SI</asp:ListItem>
                                                            <asp:ListItem Value="N">NO</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:RequiredFieldValidator ID="rv_campo_funcionario" runat="server" 
                                                            ControlToValidate="RadioButtonList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td style="text-align: left">
                                                    </td>
                                                    <td colspan="2" style="text-align: right" width="4px">
                                                        &nbsp;</td>
                                                    <td colspan="2" style="text-align: right">
                                                        &nbsp;</td>
                                                    <td style="text-align: right" width="4px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="InsertButton_inserta" runat="server" 
                                                            CausesValidation="True" CommandName="Insert" 
                                                            ImageUrl="~/images/controles/add.png" Text="Insert" ToolTip="Agregar" />
                                                    </td>
                                                    <td width="200">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                            CausesValidation="False" CommandName="Cancel" 
                                                            ImageUrl="~/images/controles/cancel.png" Text="Cancel" ToolTip="Cancelar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <table align="center" style="width: 812px">
                                                <tr>
                                                    <td class="style18" style="text-align: right">
                                                        Código:
                                                    </td>
                                                    <td class="style19" style="text-align: left" width="350" height="50">
                                                        <asp:Label ID="cod_variableLabel" runat="server" 
                                                            Text='<%# Eval("cod_variable") %>' Width="200px" BorderColor="Gray" 
                                                            BorderStyle="Dotted" BorderWidth="1px" />
                                                    </td>
                                                    <td class="style19" style="text-align: right">
                                                    </td>
                                                    <td class="style19" style="text-align: left">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" style="text-align: right" valign="top">
                                                        Descripción:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:Label ID="descripcionLabel" runat="server" BorderColor="Gray" 
                                                            BorderStyle="Dotted" BorderWidth="1px" Height="100%" 
                                                            Text='<%# Bind("descripcion") %>' Width="100%"></asp:Label>
                                                    </td>
                                                    <td style="text-align: right" valign="top">
                                                        Abreviado:</td>
                                                    <td style="text-align: left" valign="top">
                                                        <asp:Label ID="abreviadoLabel" runat="server" Text='<%# Bind("abreviado") %>' 
                                                            Width="99%" BorderColor="Gray" BorderStyle="Dotted" BorderWidth="1px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" style="text-align: right" valign="middle">
                                                        Select Campo:
                                                    </td>
                                                    <td height="50" style="text-align: left" valign="middle" width="350">
                                                        <asp:Label ID="select_campoLabel" runat="server" 
                                                            Text='<%# Bind("select_campo") %>' Width="100%" BorderColor="Gray" 
                                                            BorderStyle="Dotted" BorderWidth="1px" />
                                                    </td>
                                                    <td style="text-align: right" valign="middle">
                                                        From Tabla:</td>
                                                    <td style="text-align: left" valign="middle">
                                                        <asp:Label ID="from_tablaLabel" runat="server" Text='<%# Bind("from_tabla") %>' 
                                                            Width="99%" BorderColor="Gray" BorderStyle="Dotted" BorderWidth="1px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" style="text-align: right" valign="top">
                                                        Where Condición:
                                                    </td>
                                                    <td height="50" style="text-align: left" width="350">
                                                        <asp:Label ID="where_condicionLabel" runat="server" Height="100%" 
                                                            Text='<%# Bind("where_condicion") %>' Width="100%" BorderColor="Gray" 
                                                            BorderStyle="Dotted" BorderWidth="1px" />
                                                    </td>
                                                    <td style="text-align: right" valign="top">
                                                        Campo Funcionario:</td>
                                                    <td style="text-align: left" valign="top">
                                                        <asp:RadioButtonList ID="rb_item" runat="server" Enabled="False" 
                                                            RepeatDirection="Horizontal" 
                                                            SelectedValue='<%# Bind("campo_funcionario") %>' BorderColor="Gray" 
                                                            BorderStyle="Dotted" BorderWidth="1px" Height="26px" Width="96px">
                                                            <asp:ListItem Value="S">SI</asp:ListItem>
                                                            <asp:ListItem Value="N">NO</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18" style="text-align: right">
                                                    </td>
                                                    <td style="text-align: left">
                                                    </td>
                                                    <td width="160">
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table align="center">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td width="70">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td width="70">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="NewButton" runat="server" CausesValidation="False" 
                                                            CommandName="New" ImageUrl="~/images/controles/new.png" Text="New" 
                                                            ToolTip="Agregar" />
                                                    </td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="EditButton" runat="server" CausesValidation="False" 
                                                            CommandName="Edit" ImageUrl="~/images/controles/edit.png" Text="Edit" 
                                                            ToolTip="Modificar" />
                                                    </td>
                                                    <td width="100">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:ImageButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                                            CommandName="Delete" ImageUrl="~/images/controles/eliminar.png" 
                                                            onclientclick="return confirm('Atención. La eliminación de esta variable puede alterar el funcionamiento de la Liquidación. Desea Continuar?')" 
                                                            Text="Delete" ToolTip="Eliminar" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="#333333" 
                                            HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <InsertRowStyle ForeColor="Black" />
                                    </asp:FormView>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="variables_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [variables] WHERE [cod_variable] = @cod_variable" 
                    InsertCommand="INSERT INTO [variables] ([descripcion], [abreviado], [select_campo], [from_tabla], [where_condicion], [campo_funcionario]) VALUES (@descripcion, @abreviado, @select_campo, @from_tabla, @where_condicion, @campo_funcionario)" 
                    SelectCommand="SELECT cod_variable, descripcion, abreviado, select_campo, from_tabla, where_condicion, campo_funcionario FROM variables WHERE (descripcion LIKE @txt_filtra + '%')" 
                    
                    
                    
                            
                            UpdateCommand="UPDATE [variables] SET [descripcion] = @descripcion, [abreviado] = @abreviado, [select_campo] = @select_campo, [from_tabla] = @from_tabla, [where_condicion] = @where_condicion, [campo_funcionario] = @campo_funcionario WHERE [cod_variable] = @cod_variable">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt_filtra" Name="txt_filtra" 
                                    PropertyName="Text" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="cod_variable" Type="Int16" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="abreviado" Type="String" />
                                <asp:Parameter Name="select_campo" Type="String" />
                                <asp:Parameter Name="from_tabla" Type="String" />
                                <asp:Parameter Name="where_condicion" Type="String" />
                                <asp:Parameter Name="campo_funcionario" Type="String" />
                                <asp:Parameter Name="cod_variable" Type="Int16" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" Type="String" />
                                <asp:Parameter Name="abreviado" Type="String" />
                                <asp:Parameter Name="select_campo" Type="String" />
                                <asp:Parameter Name="from_tabla" Type="String" />
                                <asp:Parameter Name="where_condicion" Type="String" />
                                <asp:Parameter Name="campo_funcionario" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:HiddenField ID="hf_campo_funcionario" runat="server" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
</asp:Content>

