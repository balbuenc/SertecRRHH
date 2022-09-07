<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_pagos_manuales.aspx.vb" Inherits="man_pagos_manuales" title="CobolHR | Pagos Manuales" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="css/Templates.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="grilla_principal" >
        <tr style="height: 50px">
            <td >
                &nbsp;</td>
            <td style="text-align: center" colspan="4" >
                <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="Larger" 
                    Text="Carga de Pagos Manuales por Funcionario"></asp:Label>
                </td>
            <td >
                </td>
        </tr>
        <tr style="height: 50px">
            <td >
                &nbsp;</td>
            <td colspan="4" >
                <table class="style3">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: center">
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
                                                    <EmptyDataTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text="Seleccione un Funcionario"></asp:Label>
                                                    </EmptyDataTemplate>
                                                </asp:FormView>
                                            </td>
                        <td style="text-align: center">
                                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                                    ImageUrl="~/images/controles/find.png" 
                                                    onclientclick="var wBusqueda = window.open('busca_funcionarios_pagos_manuales.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                                    ToolTip="Buscar Funcionario" />
                                            </td>
                    </tr>
                </table>
                </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px">
            <td >
                &nbsp;</td>
            <td colspan="4" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 200px">
            <td >
                </td>
            <td valign="top" colspan="4" >
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_pago" 
                    DataSourceID="DSPagosManuales" DefaultMode="Insert">
                    <EditItemTemplate>
                        id_pago:
                        <asp:Label ID="id_pagoLabel1" runat="server" Text='<%# Eval("id_pago") %>' />
                        <br />
                        cod_funcionario:
                        <asp:TextBox ID="cod_funcionarioTextBox" runat="server" 
                            Text='<%# Bind("cod_funcionario") %>' />
                        <br />
                        fecha:
                        <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' />
                        <br />
                        cod_moneda:
                        <asp:TextBox ID="cod_monedaTextBox" runat="server" 
                            Text='<%# Bind("cod_moneda") %>' />
                        <br />
                        monto:
                        <asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table class="style3">
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label8" runat="server" CssClass="label" Text="Fecha:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label9" runat="server" CssClass="label" Text="Moneda:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="150px">
                                        <asp:ListItem Value="2">Guaraníes</asp:ListItem>
                                        <asp:ListItem Value="1">Dólares</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label10" runat="server" CssClass="label" Text="Monto:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="CodFuncionarioTextBox" runat="server" 
                                        Text='<%# Bind("cod_funcionario") %>' Visible="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4" width="150px">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Cargar Pago" />
                                </td>
                                <td align="center">
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancelar Pago" />
                                </td>
                            </tr>
                        </table>
&nbsp;
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="left" class="style3">
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label1" runat="server" CssClass="label" Text="ID. Pago:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:Label ID="id_pagoLabel" runat="server" Text='<%# Eval("id_pago") %>' />
                                </td>
                            </tr>
                            <tr align="left">
                                <td align="left">
                                    <asp:Label ID="Label3" runat="server" CssClass="label" Text="Fecha Pago:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label4" runat="server" CssClass="label" Text="Moneda:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        SelectedValue='<%# Bind("cod_moneda") %>' Width="100px">
                                        <asp:ListItem Value="1">Dólares</asp:ListItem>
                                        <asp:ListItem Value="2">Guaraníes</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label5" runat="server" CssClass="label" Text="Monto:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:Label ID="montoLabel" runat="server" Text='<%# Bind("monto") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    &nbsp;</td>
                                <td align="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="Editar Pago" />
                                </td>
                                <td align="center">
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                        CommandName="New" Text="Nuevo Registro" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;
                    </ItemTemplate>
                </asp:FormView>
                </td>
            <td >
                </td>
        </tr>
        <tr style="height: 200px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="4" >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="id_pago" DataSourceID="DSPagosManuales" ForeColor="#333333" 
                    GridLines="None" Width="500px">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="fecha" HeaderText="fecha" 
                            SortExpression="fecha" />
                        <asp:BoundField DataField="cod_moneda" HeaderText="cod_moneda" 
                            SortExpression="cod_moneda" />
                        <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                        <asp:BoundField DataField="pendiente" HeaderText="pendiente" 
                            SortExpression="pendiente" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="4" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="2" >
                <asp:Calendar ID="FechaAcreditacionCalendar" runat="server" 
                    SelectedDate="2013-11-25"></asp:Calendar>
                </td>
            <td valign="top" colspan="2" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="4" >
                <asp:Button ID="GenerarDiskettButton" runat="server" Text="Generar Diskett" />
                </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="4" >
    <table class="style1" width="100%">
        <tr bgcolor="#6666FF" style="font-size: medium; font-weight: bold; text-decoration: underline; color: #FFFFFF">
        <td height="30" width="33%"  align="center">
        
            BBVA</td>
        <td width="33%" align="center">
        
            ATLAS</td>
        <td width="33%" align="center">
         
            SUDAMERIS</td>
        </tr>
        <tr>
        
        <td align="center" >
        
            <asp:LinkButton ID="GuaraniesBBVALink" runat="server">Guaranies</asp:LinkButton>
            </td>
        <td align="center" rowspan="2">
        
            <asp:LinkButton ID="GuaraniesAtlasLink" runat="server">Guaranies</asp:LinkButton>
            </td>
        <td align="center" rowspan="4">
        
            <asp:LinkButton ID="GuaraniesSudameriosLink" runat="server">Guaranies</asp:LinkButton>
            </td>
            
        </tr>
        <tr>
        
        </tr>
    </table>
                </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="middle" align="center" width="33%" >
        
            <asp:LinkButton ID="GuaraniesBBVAUSDLink" runat="server">Dolares</asp:LinkButton>
                </td>
            <td valign="middle" colspan="2" width="33%" >
        
            <asp:LinkButton ID="GuaraniesAtlasUSDLink" runat="server">Dolares</asp:LinkButton>
                </td>
            <td valign="middle" align="center" width="33%" >
        
            <asp:LinkButton ID="GuaraniesSudamerisUSDLink" runat="server">Dolares</asp:LinkButton>
                </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 50px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" colspan="4" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr >
            <td >
                </td>
            <td colspan="4">
                <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                <asp:SqlDataSource ID="DSPagosManuales" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [pagos_manuales] WHERE [id_pago] = @original_id_pago" 
                    InsertCommand="INSERT INTO [pagos_manuales] ([cod_funcionario], [fecha], [cod_moneda], [monto]) VALUES (@cod_funcionario, @fecha, @cod_moneda, @monto)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [id_pago], [cod_funcionario], [fecha], [cod_moneda], [monto], [pendiente] FROM [pagos_manuales] WHERE ([cod_funcionario] = @cod_funcionario)" 
                    
                    UpdateCommand="UPDATE [pagos_manuales] SET [cod_funcionario] = @cod_funcionario, [fecha] = @fecha, [cod_moneda] = @cod_moneda, [monto] = @monto WHERE [id_pago] = @original_id_pago AND [cod_funcionario] = @original_cod_funcionario AND [fecha] = @original_fecha AND [cod_moneda] = @original_cod_moneda AND [monto] = @original_monto">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hf_cod_funcionario" Name="cod_funcionario" 
                            PropertyName="Value" Type="Int16" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_id_pago" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cod_funcionario" Type="Int16" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="cod_moneda" Type="Int16" />
                        <asp:Parameter Name="monto" Type="Decimal" />
                        <asp:Parameter Name="original_id_pago" Type="Int32" />
                        <asp:Parameter Name="original_cod_funcionario" Type="Int16" />
                        <asp:Parameter Name="original_fecha" Type="DateTime" />
                        <asp:Parameter Name="original_cod_moneda" Type="Int16" />
                        <asp:Parameter Name="original_monto" Type="Decimal" />
                    </UpdateParameters>
                    <InsertParameters>                        
                        <asp:ControlParameter Name="cod_funcionario" ControlID="hf_cod_funcionario" PropertyName="Value" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="cod_moneda" Type="Int16" />
                        <asp:Parameter Name="monto" Type="Decimal" />
                    </InsertParameters>
                </asp:SqlDataSource>
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
            <td 
                </td>
        </tr>
    </table>
</asp:Content>

