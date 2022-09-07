<%@ Page Title="" Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_historial_vacaciones.aspx.vb" Inherits="man_historial_ausencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 982px;
            text-align: center;
        }
        .style5
        {
            width: 64%;
        }
        .style8
        {
            width: 112px;
        }
        .style9
        {
            width: 7px;
        }
        .style14
        {
            width: 97%;
            height: 135px;
        }
        .style15
        {
            width: 636px;
        }
        .style21
        {
            width: 39px;
        }
        .style24
        {
            width: 91%;
        }
        .style35
        {
            width: 71px;
        }
        .style41
        {
            width: 982px;
            font-size: large;
            font-weight: bold;
            font-family: "Trebuchet MS";
        }
        .style42
        {
            width: 495px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td style="text-align: center" valign="top">
                        <table align="center" class="style3" 
                    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: bolder">
                            <tr>
                                <td class="style4" valign="top">
                                    &nbsp;</td>
                                <td style="text-align: right" valign="top">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/controles/salir32.png" PostBackUrl="~/home.aspx" 
                                style="text-align: right" ToolTip="Volver al Menu Principal" Height="32px" 
                                        Width="32px" />
                                </td>
                            </tr>
                        </table>
                        <table align="center" class="style5">
                            <tr>
                                <td class="style41">
                                    Historial de Vacaciones</td>
                                <td class="style21" style="text-align: left" rowspan="4">
                                    <asp:ImageButton ID="img_busca" runat="server" 
                                ImageUrl="~/images/controles/find.png" 
                                
                                
                                        onclientclick="var wBusqueda = window.open('busca_funcionarios_historial_vacaciones.aspx','wBusqeuda','width=500,height=500, left = 262, top = 134');return false" 
                                        ToolTip="Buscar Funcionario" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30">
                                    <asp:FormView ID="form_funcionarios" runat="server" 
                                DataSourceID="funcionarios_con" ForeColor="#0066FF" Width="100%">
                                        <EditItemTemplate>
                                            Funcionario:
                                            <asp:TextBox ID="FuncionarioTextBox" runat="server" 
                                        Text='<%# Bind("Funcionario") %>' />
                                            <br />
                                            <asp:ImageButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                            &nbsp;<asp:ImageButton ID="UpdateCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Funcionario:
                                            <asp:TextBox ID="FuncionarioTextBox0" runat="server" 
                                        Text='<%# Bind("Funcionario") %>' />
                                            <br />
                                            <asp:ImageButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:ImageButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="FuncionarioLabel" runat="server" 
                                        style="font-size: x-large" Text='<%# Bind("Funcionario") %>' Width="100%" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                            <tr>
                                <td 
                            valign="top" height="30" style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:Label ID="lb_mensaje" runat="server" 
                                ForeColor="#FF3300" Text="Label" Width="100%"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="style14">
                            <tr>
                                <td class="style35">
                                    &nbsp;</td>
                                <td 
                            style="font-family: 'Trebuchet MS'; font-size: small; text-align: left;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingresar 
                                    Nuevo Registro:</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="150">
                                    &nbsp;</td>
                                <td class="style15" style="font-family: 'Trebuchet MS'; font-size: small">
                                      <table class="style3">
                                                <tr>
                                                    <td class="style43">
                                                        <b>Periodo:</b></td>
                                                    <td>
                                                        <asp:TextBox ID="PeriodoTextBox" runat="server" 
                                                            Text='<%# Bind("periodo", "{0:D}") %>' />
                                                        <asp:RequiredFieldValidator ID="rv_periodo" runat="server"  ControlToValidate="PeriodoTextBox"
                                                            ErrorMessage="Debe de Completar con un Periodo Válido">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td class="style43">
                                                        <b>desde:</b></td>
                                                    <td>
                                                        <asp:TextBox ID="desdeTextBox" runat="server" Text='<%# Bind("desde") %>' />
                                                        <asp:RequiredFieldValidator ID="rv_desde" runat="server"  ControlToValidate="desdeTextBox"
                                                            ErrorMessage="Debe completar la fecha de inicio ">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style43">
                                                        <b>hasta:</b></td>
                                                    <td>
                                                        <asp:TextBox ID="hastaTextBox" runat="server" Text='<%# Bind("hasta") %>' />
                                                        <asp:RequiredFieldValidator ID="rv_hasta" runat="server"  ControlToValidate="hastaTextBox"
                                                            ErrorMessage="Debe de completar la fecha de finalizacion de las vacaciones">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style43">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                           <br />
                                    </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="150">
                                    &nbsp;</td>
                                <td class="style15" style="font-family: 'Trebuchet MS'; font-size: small">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="150">
                                    &nbsp;</td>
                                <td class="style15" style="font-family: 'Trebuchet MS'; font-size: small">
                                    <asp:Button ID="Button1" runat="server" Text="Ingresar" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style24">
                            <tr>
                                <td width="200">
                                    &nbsp;</td>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;" 
                                    class="style42">
                                    <asp:GridView ID="grid_historial_ausencias" runat="server" 
                                AutoGenerateColumns="False" CellPadding="4" 
                                DataSourceID="historial_vacaciones_tomadas_con" ForeColor="#333333" GridLines="None" 
                                Width="502px" style="text-align: center" AllowSorting="True" 
                                        DataKeyNames="cod_vacaciones_tomadas">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="periodo" HeaderText="periodo" 
                                                SortExpression="periodo" />
                                            <asp:BoundField DataField="desde" DataFormatString="{0:d}" HeaderText="desde" 
                                                SortExpression="desde" />
                                            <asp:BoundField DataField="hasta" DataFormatString="{0:d}" HeaderText="hasta" 
                                                SortExpression="hasta" />
                                            <asp:BoundField DataField="dias_utlizados" HeaderText="dias" 
                                                SortExpression="dias_utlizados" ReadOnly="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" 
                                    HorizontalAlign="Center" />
                                        <EmptyDataTemplate>
                                            <asp:Label ID="Label5" runat="server" 
                                        ForeColor="#FF3300" Text="Ningun Registro." Width="100%"></asp:Label>
                                        </EmptyDataTemplate>
                                        <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                </td>
                                <td style="text-align: left; font-family: 'Trebuchet MS'; font-size: small;">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table align="center" class="style3">
                            <tr>
                                <td class="style8">
                                    <asp:SqlDataSource ID="historial_vacaciones_tomadas_con" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>"                                         
                                        
                                        
                                        
                                        SelectCommand="SELECT [cod_vacaciones_tomadas], [cod_funcionario], [codigo], [desde], [hasta], [dias_utlizados], [periodo] FROM [historial_vacaciones_tomadas] WHERE ([cod_funcionario] = @cod_funcionario) ORDER BY [periodo], [desde]" 
                                        ConflictDetection="CompareAllValues" 
                                        DeleteCommand="DELETE FROM [historial_vacaciones_tomadas] WHERE [cod_vacaciones_tomadas] = @original_cod_vacaciones_tomadas" 
                                        InsertCommand="INSERT INTO [historial_vacaciones_tomadas] ([cod_funcionario], [codigo], [desde], [hasta], [dias_utlizados], [periodo]) VALUES (@cod_funcionario, @codigo, @desde, @hasta, @dias_utlizados, @periodo)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        UpdateCommand="UPDATE [historial_vacaciones_tomadas] SET [cod_funcionario] = @cod_funcionario, [codigo] = @codigo, [desde] = @desde, [hasta] = @hasta, [dias_utlizados] = @dias_utlizados, [periodo] = @periodo WHERE [cod_vacaciones_tomadas] = @original_cod_vacaciones_tomadas AND [cod_funcionario] = @original_cod_funcionario AND [codigo] = @original_codigo AND [desde] = @original_desde AND [hasta] = @original_hasta AND (([dias_utlizados] = @original_dias_utlizados) OR ([dias_utlizados] IS NULL AND @original_dias_utlizados IS NULL)) AND (([periodo] = @original_periodo) OR ([periodo] IS NULL AND @original_periodo IS NULL))">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="cod_funcionario" 
                                                QueryStringField="cod_funcionario" Type="Int32" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_cod_vacaciones_tomadas" Type="Int64" />
                                           
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int32" />
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="desde" Type="DateTime" />
                                            <asp:Parameter Name="hasta" Type="DateTime" />
                                            <asp:Parameter Name="dias_utlizados" Type="Int32" />
                                            <asp:Parameter Name="periodo" Type="Int32" />
                                            <asp:Parameter Name="original_cod_vacaciones_tomadas" Type="Int64" />
                                            <asp:Parameter Name="original_cod_funcionario" Type="Int32" />
                                            <asp:Parameter Name="original_codigo" Type="Int32" />
                                            <asp:Parameter Name="original_desde" Type="DateTime" />
                                            <asp:Parameter Name="original_hasta" Type="DateTime" />
                                            <asp:Parameter Name="original_dias_utlizados" Type="Int32" />
                                            <asp:Parameter Name="original_periodo" Type="Int32" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cod_funcionario" Type="Int32" />
                                            <asp:Parameter Name="codigo" Type="Int32" />
                                            <asp:Parameter Name="desde" Type="DateTime" />
                                            <asp:Parameter Name="hasta" Type="DateTime" />
                                            <asp:Parameter Name="dias_utlizados" Type="Int32" />
                                            <asp:Parameter Name="periodo" Type="Int32" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style9">
                                    <asp:SqlDataSource ID="funcionarios_con" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" SelectCommand="SELECT  apellidos + ' , ' + nombres AS Funcionario FROM funcionarios WHERE (cod_funcionario LIKE @campo)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hf_cod_funcionario" Name="campo" 
                                        PropertyName="Value" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
                                    <asp:HiddenField ID="hf_periodo" runat="server" />
                                    <asp:HiddenField ID="hf_desde" runat="server" />
                                    <asp:HiddenField ID="hf_hasta" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

