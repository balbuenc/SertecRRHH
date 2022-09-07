
Partial Class man_regiones
    Inherits System.Web.UI.Page
    Dim descripcion As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion = CType(form_regiones.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = True
    End Sub

    Protected Sub form_regiones_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_regiones.ItemInserted
        descripcion = CType(form_regiones.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = False
    End Sub
End Class
