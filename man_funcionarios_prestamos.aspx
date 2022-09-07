<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_funcionarios_prestamos.aspx.vb" Inherits="man_funcionarios_prestamos" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 100%;
        }
        .style8
        {
            width: 84%;
        }
        .style23
        {
            width: 542px;
        }
        .style15
        {
            width: 90%;
        }
        .style17
        {
            width: 168px;
        }
        .style18
        {
            width: 129px;
        }
        .style19
        {
            width: 124px;
        }
        .style16
        {
            width: 131px;
        }
        .style25
        {
            height: 260px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style3" __designer:mapid="304">
    <tr __designer:mapid="305">
        <td style="text-align: center" __designer:mapid="306">
            <table align="center" class="style3" __designer:mapid="307">
                <tr __designer:mapid="308">
                    <td 
                            
                            
                            
                                    style="text-align: right;" __designer:mapid="309">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                                        ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                        ToolTip="Volver al Menu Principal" Width="32px" />
                    </td>
                </tr>
            </table>
            <table align="center" 
                    style="font-family: 'Trebuchet MS'; font-size: small" width="64%" 
                            __designer:mapid="30b">
                <tr __designer:mapid="30c">
                    <td valign="top" align="center" 
                                    
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                                    __designer:mapid="30d">
                        Prestamos por funcionarios</td>
                    <td rowspan="5" __designer:mapid="30e">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/controles/find.png" 
                                
                                onclientclick="var wBusqueda = window.open('busca_funcionarios_prestamos.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                PostBackUrl="~/home.aspx" ToolTip="Busca Funcionarios" />
                    </td>
                </tr>
                <tr __designer:mapid="310">
                    <td align="center" 
                                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder; text-align: center;" 
                                    valign="top" __designer:mapid="311">
                                    &nbsp;</td>
                </tr>
                <tr __designer:mapid="312">
                    <td valign="top" align="center" height="30" __designer:mapid="313">
                        <asp:FormView ID="form_funcionarios" runat="server" 
                                        DataSourceID="funcionarios_con" Width="485px">
                            <EditItemTemplate>
                                            Funcionarios:
                                            <asp:TextBox ID="FuncionariosTextBox" runat="server" 
                                                Text='<%# Bind("Funcionarios") %>' />
                                <br />
                                <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                            Funcionarios:
                                            <asp:TextBox ID="FuncionariosTextBox0" runat="server" 
                                                Text='<%# Bind("Funcionarios") %>' />
                                <br />
                                <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:ImageButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="FuncionariosLabel" runat="server" Font-Size="X-Large" 
                                                ForeColor="#0066FF" Text='<%# Bind("Funcionarios") %>' 
                                    Width="100%" />
                            </ItemTemplate>
                        </asp:FormView>
                    </td>
                </tr>
                <tr __designer:mapid="321">
                    <td valign="top" align="center" height="30" 
                                    style="font-family: 'Trebuchet MS'; font-size: small" 
                                    __designer:mapid="322">
                        <asp:Label ID="lb_mensaje" runat="server" ForeColor="#FF3300" Width="100%"></asp:Label>
                    </td>
                </tr>
                <tr __designer:mapid="324">
                    <td align="center" valign="baseline" __designer:mapid="325">
                        Asignacion de prestamos:</td>
                </tr>
            </table>
            <table align="center" class="style8" __designer:mapid="326">
                <tr __designer:mapid="327">
                    <td __designer:mapid="328">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                </tr>
                <tr __designer:mapid="327">
                    <td __designer:mapid="328" align="center" class="style25">
                        <asp:FormView ID="PrestamoFuncionarioFormView" runat="server" 
                            AllowPaging="True" DataKeyNames="nro_prestamo" 
                            DataSourceID="PrestamosFuncionarioSqlDataSource" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            ForeColor="Black" GridLines="Horizontal" style="text-align: left" Width="313px">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <EditItemTemplate>
                                nro_prestamo:
                                <asp:Label ID="nro_prestamoLabel1" runat="server" 
                                    Text='<%# Eval("nro_prestamo") %>' />
                                <br />
                                cod_funcionario:
                                <asp:TextBox ID="cod_funcionarioTextBox" runat="server" 
                                    Text='<%# Bind("cod_funcionario") %>' />
                                <br />
                                cod_prestamo:
                                <asp:TextBox ID="cod_prestamoTextBox" runat="server" 
                                    Text='<%# Bind("cod_prestamo") %>' />
                                <br />
                                cant_cuotas:
                                <asp:TextBox ID="cant_cuotasTextBox" runat="server" 
                                    Text='<%# Bind("cant_cuotas") %>' />
                                <br />
                                interes_anual:
                                <asp:TextBox ID="interes_anualTextBox" runat="server" 
                                    Text='<%# Bind("interes_anual") %>' />
                                <br />
                                meses_gracia:
                                <asp:TextBox ID="meses_graciaTextBox" runat="server" 
                                    Text='<%# Bind("meses_gracia") %>' />
                                <br />
                                monto_prestamo:
                                <asp:TextBox ID="monto_prestamoTextBox" runat="server" 
                                    Text='<%# Bind("monto_prestamo") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <br />
                                Prestamo:
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="PrestamosSqlDataSource" DataTextField="prestamo" 
                                    DataValueField="cod_prestamo" SelectedValue='<%# Bind("cod_prestamo") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="PrestamosSqlDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                                    SelectCommand="SELECT [cod_prestamo], [prestamo] FROM [prestamos]">
                                </asp:SqlDataSource>
                                <br />
                                Cant. cuotas:
                                <asp:TextBox ID="cant_cuotasTextBox" runat="server" 
                                    Text='<%# Bind("cant_cuotas") %>' />
                                <br />
                                Int. anual:
                                <asp:TextBox ID="interes_anualTextBox" runat="server" 
                                    Text='<%# Bind("interes_anual") %>' />
                                <br />
                                Meses gracia:
                                <asp:TextBox ID="meses_graciaTextBox" runat="server" 
                                    Text='<%# Bind("meses_gracia") %>' />
                                <br />
                                Monto prestamo:
                                <asp:TextBox ID="monto_prestamoTextBox" runat="server" 
                                    Text='<%# Bind("monto_prestamo") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td>
                                            Nro. Prestamo</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="nro_prestamoLabel" runat="server" 
                                                Text='<%# Eval("nro_prestamo") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style24">
                                            Cod. funcionario</td>
                                        <td class="style24">
                                        </td>
                                        <td class="style24">
                                            <asp:Label ID="cod_funcionarioLabel" runat="server" 
                                                Text='<%# Bind("cod_funcionario") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Cod. prestamo</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="cod_prestamoLabel" runat="server" 
                                                Text='<%# Bind("cod_prestamo") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Cant. Cuotas</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="cant_cuotasLabel" runat="server" 
                                                Text='<%# Bind("cant_cuotas") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Int. anual %</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="interes_anualLabel" runat="server" 
                                                Text='<%# Bind("interes_anual") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Mese gracia</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="meses_graciaLabel" runat="server" 
                                                Text='<%# Bind("meses_gracia") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Monto prestamo</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="monto_prestamoLabel" runat="server" 
                                                Text='<%# Bind("monto_prestamo") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                Fecha primer venc.:<br />
                                <asp:TextBox ID="FechaPrimerVencimientoTB" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Agregar Prestamo" />
                                <br />
                            </ItemTemplate>
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <EmptyDataTemplate>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="Asignar Prestamo" />
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:FormView>
                    </td>
                </tr>
            </table>
            <table align="center" >
                <tr >
                    <td style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;" 
                                    class="style23" >
                        <asp:GridView ID="grid_cuotas" runat="server" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderWidth="1px" CellPadding="4" DataKeyNames="nro_prestamo,nro_cuota" 
                                DataSourceID="PrestamoCuotasSqlDataSource" ForeColor="Black" GridLines="Horizontal" 
                                Width="816px" AllowPaging="True" AllowSorting="True" 
                            BorderStyle="None" style="margin-right: 103px">
                            <Columns>
                                <asp:BoundField DataField="nro_cuota" HeaderText="Cuota nro." 
                                        SortExpression="nro_cuota" ReadOnly="True" ></asp:BoundField>
                                <asp:BoundField DataField="fecha_vencimiento" HeaderText="Vencimiento" 
                                                SortExpression="fecha_vencimiento" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="fecha_pago" HeaderText="Fecha Pago" 
                                    SortExpression="fecha_pago" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="monto_interes" HeaderText="Monto int." 
                                    SortExpression="monto_interes" />
                                <asp:BoundField DataField="monto_capital" HeaderText="Monto capital" 
                                    SortExpression="monto_capital" />
                                <asp:BoundField DataField="monto_capitaLresidual" 
                                    HeaderText="Capital res." SortExpression="monto_capitaLresidual" />
                                <asp:BoundField DataField="monto_cuota" HeaderText="Monto cuota" 
                                    SortExpression="monto_cuota" />
                                <asp:BoundField DataField="monto_pago" HeaderText="Monto pago" 
                                    SortExpression="monto_pago" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <PagerStyle BackColor="White" ForeColor="Black" 
                                    HorizontalAlign="Right" />
                            <EmptyDataTemplate>
                                <table align="center" class="style12">
                                    <tr>
                                        <td style="font-family: 'Trebuchet MS'; font-size: small">
                                            <asp:Button ID="Button3" runat="server" Text="Generar cuotas" 
                                                onclick="Button3_Click"/>
                                        </td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br  />
            <table class="style15" >
                <tr >
                    <td class="style17">
                        <asp:SqlDataSource ID="PrestamosFuncionarioSqlDataSource" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            DeleteCommand="DELETE FROM [funcionarios_prestamos] WHERE [nro_prestamo] = @original_nro_prestamo" 
                            InsertCommand="INSERT INTO [funcionarios_prestamos] ([cod_funcionario], [cod_prestamo], [cant_cuotas], [interes_anual], [meses_gracia], [monto_prestamo]) VALUES (@cod_funcionario, @cod_prestamo, @cant_cuotas, @interes_anual, @meses_gracia, @monto_prestamo)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT [nro_prestamo], [cod_funcionario], [cod_prestamo], [cant_cuotas], [interes_anual], [meses_gracia], [monto_prestamo] FROM [funcionarios_prestamos] WHERE ([cod_funcionario] = @cod_funcionario)" 
                            
                            UpdateCommand="UPDATE [funcionarios_prestamos] SET [cod_funcionario] = @cod_funcionario, [cod_prestamo] = @cod_prestamo, [cant_cuotas] = @cant_cuotas, [interes_anual] = @interes_anual, [meses_gracia] = @meses_gracia, [monto_prestamo] = @monto_prestamo WHERE [nro_prestamo] = @original_nro_prestamo">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="cod_funcionario" 
                                    PropertyName="Value" Type="Int16" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="original_nro_prestamo" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cod_funcionario" Type="Int16" />
                                <asp:Parameter Name="cod_prestamo" Type="Int32" />
                                <asp:Parameter Name="cant_cuotas" Type="Int16" />
                                <asp:Parameter Name="interes_anual" Type="Decimal" />
                                <asp:Parameter Name="meses_gracia" Type="Int16" />
                                <asp:Parameter Name="monto_prestamo" Type="Int32" />
                                <asp:Parameter Name="original_nro_prestamo" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>                                
                                <asp:ControlParameter Name="cod_funcionario" Type="Int16" ControlID="hf_cod_funcionario" PropertyName="Value" />                                
                                <asp:Parameter Name="cod_prestamo" Type="Int32" />
                                <asp:Parameter Name="cant_cuotas" Type="Int16" />
                                <asp:Parameter Name="interes_anual" Type="Decimal" />
                                <asp:Parameter Name="meses_gracia" Type="Int16" />
                                <asp:Parameter Name="monto_prestamo" Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style18" >
                        <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    SelectCommand="SELECT apellidos + ' , ' + nombres AS Funcionarios FROM funcionarios
WHERE (cod_funcionario LIKE @campo)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                            PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style19" >
                        <asp:SqlDataSource ID="PrestamoCuotasSqlDataSource" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                            SelectCommand="SELECT [nro_prestamo], [nro_cuota], [fecha_vencimiento], [fecha_pago], [monto_interes], [monto_capital], [monto_capitaLresidual], [monto_cuota], [monto_pago] FROM [prestamos_cuotas] WHERE ([nro_prestamo] = @nro_prestamo)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="PrestamoFuncionarioFormView" 
                                    Name="nro_prestamo" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style16" >
                        <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                    </td>
                    <td >
                                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</asp:Content>

