<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="Prestamos.aspx.vb" Inherits="Prestamos" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 110px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style3" width="500">
    <tr>
        <td width="25">
            &nbsp;</td>
        <td width="600">
            &nbsp;</td>
        <td width="25">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="25">
            &nbsp;</td>
        <td style="text-align: center" width="600">
            <b>Prestamos</b></td>
        <td width="25">
            &nbsp;</td>
    </tr>
    <tr>
        <td height="400">
            &nbsp;</td>
        <td valign="top">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="cod_prestamo" 
                DataSourceID="PrestamosSqlDataSource" ForeColor="Black" GridLines="Horizontal" 
                Width="100%">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <EditItemTemplate>
                    cod_prestamo:
                    <asp:Label ID="cod_prestamoLabel1" runat="server" 
                        Text='<%# Eval("cod_prestamo") %>' />
                    <br />
                    prestamo:
                    <asp:TextBox ID="prestamoTextBox" runat="server" 
                        Text='<%# Bind("prestamo") %>' />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    prestamo:
                    <asp:TextBox ID="prestamoTextBox" runat="server" 
                        Text='<%# Bind("prestamo") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="style3">
                        <tr>
                            <td class="style4">
                                Cod. Prestamo</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="cod_prestamoLabel" runat="server" 
                                    Text='<%# Eval("cod_prestamo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Prestamo:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="prestamoLabel" runat="server" Text='<%# Bind("prestamo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Cant. Cuotas</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="cant_cuotasLabel" runat="server" 
                                    Text='<%# Bind("cant_cuotas") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Int. Anual %</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="interes_anualLabel" runat="server" 
                                    Text='<%# Bind("interes_anual") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Meses gracia</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="meses_graciaLabel" runat="server" 
                                    Text='<%# Bind("meses_gracia") %>' />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:FormView>
            <asp:SqlDataSource ID="PrestamosSqlDataSource" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                DeleteCommand="DELETE FROM [prestamos] WHERE [cod_prestamo] = @original_cod_prestamo AND [prestamo] = @original_prestamo AND [cant_cuotas] = @original_cant_cuotas AND [interes_anual] = @original_interes_anual AND [meses_gracia] = @original_meses_gracia" 
                InsertCommand="INSERT INTO [prestamos] ([prestamo], [cant_cuotas], [interes_anual], [meses_gracia]) VALUES (@prestamo, @cant_cuotas, @interes_anual, @meses_gracia)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [cod_prestamo], [prestamo], [cant_cuotas], [interes_anual], [meses_gracia] FROM [prestamos]" 
                UpdateCommand="UPDATE [prestamos] SET [prestamo] = @prestamo, [cant_cuotas] = @cant_cuotas, [interes_anual] = @interes_anual, [meses_gracia] = @meses_gracia WHERE [cod_prestamo] = @original_cod_prestamo AND [prestamo] = @original_prestamo AND [cant_cuotas] = @original_cant_cuotas AND [interes_anual] = @original_interes_anual AND [meses_gracia] = @original_meses_gracia">
                <DeleteParameters>
                    <asp:Parameter Name="original_cod_prestamo" Type="Int32" />
                    <asp:Parameter Name="original_prestamo" Type="String" />
                    <asp:Parameter Name="original_cant_cuotas" Type="Int16" />
                    <asp:Parameter Name="original_interes_anual" Type="Decimal" />
                    <asp:Parameter Name="original_meses_gracia" Type="Int16" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="prestamo" Type="String" />
                    <asp:Parameter Name="cant_cuotas" Type="Int16" />
                    <asp:Parameter Name="interes_anual" Type="Decimal" />
                    <asp:Parameter Name="meses_gracia" Type="Int16" />
                    <asp:Parameter Name="original_cod_prestamo" Type="Int32" />
                    <asp:Parameter Name="original_prestamo" Type="String" />
                    <asp:Parameter Name="original_cant_cuotas" Type="Int16" />
                    <asp:Parameter Name="original_interes_anual" Type="Decimal" />
                    <asp:Parameter Name="original_meses_gracia" Type="Int16" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="prestamo" Type="String" />
                    <asp:Parameter Name="cant_cuotas" Type="Int16" />
                    <asp:Parameter Name="interes_anual" Type="Decimal" />
                    <asp:Parameter Name="meses_gracia" Type="Int16" />
                </InsertParameters>
            </asp:SqlDataSource>
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
</table>

</asp:Content>

