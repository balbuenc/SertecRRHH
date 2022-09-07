
Partial Class man_tipos_liquidaciones
    Inherits System.Web.UI.Page
    Dim descripcion As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion = CType(form_tipos_liquidaciones.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = True


        Dim empresa As TextBox = CType(form_tipos_liquidaciones.Row.FindControl("txt_empresa"), TextBox)
        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        empresa.Text = v_empresa

    End Sub

    Protected Sub form_tipos_liquidaciones_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_tipos_liquidaciones.ItemInserted
        descripcion = CType(form_tipos_liquidaciones.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = False



    End Sub
End Class
