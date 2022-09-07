<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="man_pagos_manuales_diskett.aspx.vb" Inherits="man_pagos_manuales" title="CobolHR | Pagos Manuales" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="css/Templates.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="grilla_principal" >
        <tr style="height: 50px">
            <td >
                &nbsp;</td>
            <td style="text-align: center" >
                <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="Larger" 
                    Text="Generar Diskett Pagos Manuales"></asp:Label>
                </td>
            <td >
                </td>
        </tr>
        <tr style="height: 50px">
            <td >
                &nbsp;</td>
            <td >
                <asp:HiddenField ID="hf_cod_funcionario" runat="server" />
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr style="height: 200px" align="center">
            <td >
                &nbsp;</td>
            <td valign="top" >
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
        <tr >
            <td >
                </td>
            <td>
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
                </td>
            <td 
                </td>
        </tr>
    </table>
</asp:Content>

