<%@ Page Language="VB" MasterPageFile="~/menu_master.master" AutoEventWireup="false" CodeFile="escala_hay.aspx.vb" Inherits="escala_hay" title="Grados HAY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 70px;
            margin-bottom: 6px;
        }
        .style4
        {
            width: 198px;
        }
        .style5
        {
            width: 661px;
        }
        .style6
        {
            width: 198px;
            height: 76%;
        }
        .style7
        {
            width: 661px;
            height: 76%;
        }
        .style8
        {
            height: 76%;
        }
        .style9
        {
            width: 198px;
            height: 144px;
        }
        .style10
        {
            width: 661px;
            height: 144px;
            text-align: center;
        }
        .style11
        {
            height: 144px;
        }
        .style12
        {
            text-align: center;
            font-weight: bold;
            background-color: #6666FF;
        }
        .style13
        {
            text-align: center;
            font-weight: bold;
            background-color: #6666FF;
            width: 98px;
        }
        .style14
        {
            width: 98px;
        }
        .style15
        {
            text-align: center;
            font-weight: bold;
            background-color: #6666FF;
            width: 140px;
        }
        .style16
        {
            width: 140px;
            text-align: center;
        }
        .style17
        {
            text-align: center;
            font-weight: bold;
            background-color: #6666FF;
            width: 108px;
        }
        .style18
        {
            width: 108px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                <table class="style3">
                    <tr>
                        <td class="style12" style="border-style: solid">
                            Grado</td>
                        <td class="style17" style="border-style: solid">
                            Incentivo</td>
                        <td class="style13" style="border-style: solid">
                            Min</td>
                        <td class="style15" style="border-style: solid">
                            Max</td>
                        <td class="style12" style="border-style: solid">
                            Punto Medio</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:TextBox ID="GradoHayTextBox" runat="server" Width="84px"></asp:TextBox>
                        </td>
                        <td class="style18">
                            <asp:DropDownList ID="IncentivoDDL" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style14">
                            <asp:TextBox ID="MinTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td class="style16">
                            <asp:TextBox ID="MaxTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td style="text-align: center">
                            <asp:TextBox ID="PMTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="AgergarEscalaBtn" runat="server" Text="Agregar Escala" />
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td align="center" class="style7" style="height:100%">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="3" DataKeyNames="grado_hay,incentivo" 
                    DataSourceID="SqlDataSourceHHRR" 
                    EmptyDataText="No Existen Dastos de Escala HAY" 
                    GridLines="Vertical" AllowPaging="True" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Font-Names="Verdana" 
                    Font-Size="Small" PageSize="14" Width="100%">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="grado_hay" HeaderText="GRADO" ReadOnly="True" 
                            SortExpression="grado_hay" />
                        <asp:TemplateField HeaderText="INCENTIVO" SortExpression="incentivo">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    SelectedValue='<%# Bind("incentivo") %>'>
                                    <asp:ListItem>Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("incentivo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="minimo" HeaderText="MINIMO" SortExpression="minimo" 
                            DataFormatString="{0:###,###}">
                            <ControlStyle Width="35px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="maximo" HeaderText="MAXIMO" SortExpression="maximo">
                            <ControlStyle Width="35px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="punto_medio" HeaderText="PUNTO MEDIO" 
                            SortExpression="punto_medio">
                            <ControlStyle Width="35px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceHHRR" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:payrollConnectionString %>" 
                    DeleteCommand="DELETE FROM [escala_grados_hay] WHERE [grado_hay] = @original_grado_hay AND [incentivo] = @original_incentivo AND [minimo] = @original_minimo AND [maximo] = @original_maximo AND [punto_medio] = @original_punto_medio" 
                    InsertCommand="INSERT INTO [escala_grados_hay] ([grado_hay], [incentivo], [minimo], [maximo], [punto_medio]) VALUES (@grado_hay, @incentivo, @minimo, @maximo, @punto_medio)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [grado_hay], [incentivo], [minimo], [maximo], [punto_medio] FROM [escala_grados_hay]
order by [incentivo] asc,  [grado_hay] desc" 
                    
                    UpdateCommand="UPDATE [escala_grados_hay] SET [incentivo] = @incentivo, [minimo] = @minimo, [maximo] = @maximo, [punto_medio] = @punto_medio WHERE [grado_hay] = @original_grado_hay AND [incentivo] = @original_incentivo AND [minimo] = @original_minimo AND [maximo] = @original_maximo AND [punto_medio] = @original_punto_medio">
                    <DeleteParameters>
                        <asp:Parameter Name="original_grado_hay" Type="Decimal" />
                        <asp:Parameter Name="original_incentivo" Type="String" />
                        <asp:Parameter Name="original_minimo" Type="Int32" />
                        <asp:Parameter Name="original_maximo" Type="Int32" />
                        <asp:Parameter Name="original_punto_medio" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="minimo" Type="Int32" />
                        <asp:Parameter Name="maximo" Type="Int32" />
                        <asp:Parameter Name="punto_medio" Type="Int32" />
                        <asp:Parameter Name="original_grado_hay" Type="Decimal" />
                        <asp:Parameter Name="original_incentivo" Type="String" />
                        <asp:Parameter Name="original_minimo" Type="Int32" />
                        <asp:Parameter Name="original_maximo" Type="Int32" />
                        <asp:Parameter Name="original_punto_medio" Type="Int32" />
                        <asp:Parameter Name="incentivo" Type="String" />
                        
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="grado_hay" Type="Decimal" />
                        <asp:Parameter Name="incentivo" Type="String" />
                        <asp:Parameter Name="minimo" Type="Int32" />
                        <asp:Parameter Name="maximo" Type="Int32" />
                        <asp:Parameter Name="punto_medio" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

