
Partial Class man_budget
    Inherits System.Web.UI.Page
    Dim año As RequiredFieldValidator
    Dim contrato As RequiredFieldValidator

    Function devuelve_cadena(ByVal a As String) As String

        Return a

    End Function

    Protected Sub form_budget_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_budget.ItemInserted
        año = CType(form_budget.Row.FindControl("rv_año"), RequiredFieldValidator)
        contrato = CType(form_budget.Row.FindControl("rv_contrato"), RequiredFieldValidator)

        año.Enabled = False
        contrato.Enabled = False

    End Sub

    Protected Sub form_budget_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles form_budget.ItemInserting
        Dim d1l_areas As DropDownList = CType(form_budget.Row.FindControl("ddl_areas"), DropDownList)

        e.Values("cod_area") = d1l_areas.SelectedValue

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hf_gerencia_busca.Value = ddl_gerencia_busca.SelectedValue
        hf_areas_busca.Value = ddl_area_busca.SelectedValue
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim ddl1 As DropDownList = form_budget.Row.FindControl("ddl_gerencias")
        Dim ddl_area As DropDownList = form_budget.Row.FindControl("ddl_areas")

        If ddl1.Items.Count > 0 And hf_gerencia.Value <> "" Then

            ddl1.SelectedValue = hf_gerencia.Value

        End If
    End Sub

    Protected Sub InsertButton_form_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        año = CType(form_budget.Row.FindControl("rv_año"), RequiredFieldValidator)
        contrato = CType(form_budget.Row.FindControl("rv_contrato"), RequiredFieldValidator)

        año.Enabled = True
        contrato.Enabled = True

        Dim empresa As TextBox = CType(form_budget.Row.FindControl("txt_empresa"), TextBox)
        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        empresa.Text = v_empresa
    End Sub

End Class

