
Partial Class man_monedas
    Inherits System.Web.UI.Page
    Dim descripcion As RequiredFieldValidator
    Dim simbolo As RequiredFieldValidator
    Dim operador As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion = CType(form_monedas.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        simbolo = CType(form_monedas.Row.FindControl("rv_simbolo"), RequiredFieldValidator)
        operador = CType(form_monedas.Row.FindControl("rv_operador"), RequiredFieldValidator)

        descripcion.Enabled = True
        simbolo.Enabled = True
        operador.Enabled = True

    End Sub

    Protected Sub form_monedas_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_monedas.ItemInserted
        descripcion = CType(form_monedas.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        simbolo = CType(form_monedas.Row.FindControl("rv_simbolo"), RequiredFieldValidator)
        operador = CType(form_monedas.Row.FindControl("rv_operador"), RequiredFieldValidator)

        descripcion.Enabled = False
        simbolo.Enabled = False
        operador.Enabled = False

    End Sub

    Protected Sub simboloTextBox0_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class
