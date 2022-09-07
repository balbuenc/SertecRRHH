
Partial Class man_bancos
    Inherits System.Web.UI.Page

    Dim bancos_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"

        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        bancos_rv = CType(form_bancos.Row.FindControl("rv_bancos"), RequiredFieldValidator)

        bancos_rv.Enabled = True

    End Sub

    Protected Sub form_bancos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_bancos.ItemInserted
        bancos_rv = CType(form_bancos.Row.FindControl("rv_bancos"), RequiredFieldValidator)

        bancos_rv.Enabled = True

    End Sub
End Class
