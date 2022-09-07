
Partial Class man_centros_costos
    Inherits System.Web.UI.Page
    Dim rv_descripcion As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        rv_descripcion = CType(form_centro_costo.Row.FindControl("descripcion_rv"), RequiredFieldValidator)

        rv_descripcion.Enabled = True

    End Sub

    Protected Sub form_centro_costo_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_centro_costo.ItemInserted
        rv_descripcion = CType(form_centro_costo.Row.FindControl("descripcion_rv"), RequiredFieldValidator)

        rv_descripcion.Enabled = False
    End Sub
End Class
