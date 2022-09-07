
Partial Class man_cargos
    Inherits System.Web.UI.Page
    Dim cargos_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        cargos_rv = CType(form_cargos.Row.FindControl("rv_cargo"), RequiredFieldValidator)
        cargos_rv.Enabled = True
    End Sub

    Protected Sub form_cargos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_cargos.ItemInserted
        cargos_rv = CType(form_cargos.Row.FindControl("rv_cargo"), RequiredFieldValidator)
        cargos_rv.Enabled = False

    End Sub
End Class
