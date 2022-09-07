
Partial Class man_causas_egresos
    Inherits System.Web.UI.Page
    Dim descripcion_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion_rv = CType(form_causas_egresos.Row.FindControl("rv_descripcion"), RequiredFieldValidator)

        descripcion_rv.Enabled = True
    End Sub
End Class
