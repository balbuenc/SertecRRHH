
Partial Class man_categorias_mjt
    Inherits System.Web.UI.Page
    Dim descripcion_rv As RequiredFieldValidator
    Dim simbolo_rv As RequiredFieldValidator


    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion_rv = CType(form_categorias.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        simbolo_rv = CType(form_categorias.Row.FindControl("rv_simbolo"), RequiredFieldValidator)

        descripcion_rv.Enabled = True
        simbolo_rv.Enabled = True
    End Sub

    Protected Sub form_categorias_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_categorias.ItemInserted
        descripcion_rv = CType(form_categorias.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        simbolo_rv = CType(form_categorias.Row.FindControl("rv_simbolo"), RequiredFieldValidator)

        descripcion_rv.Enabled = False
        simbolo_rv.Enabled = False
    End Sub
End Class
