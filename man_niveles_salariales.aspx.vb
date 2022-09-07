
Partial Class man_niveles_salariales
    Inherits System.Web.UI.Page
    Dim descripcion As RequiredFieldValidator


   

    Protected Sub form_nivel_salarial_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_nivel_salarial.ItemInserted
        descripcion = CType(form_nivel_salarial.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = False
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Dim empresa As TextBox = CType(form_nivel_salarial.Row.FindControl("txt_empresa"), TextBox)
        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        empresa.Text = v_empresa

        descripcion = CType(form_nivel_salarial.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = True
    End Sub
End Class
