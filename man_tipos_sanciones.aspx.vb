
Partial Class tipos_sanciones
    Inherits System.Web.UI.Page
    Dim descripicion As RequiredFieldValidator

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click1(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripicion = CType(form_tipos_sancion.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripicion.Enabled = True

        Dim empresa As TextBox = CType(form_tipos_sancion.Row.FindControl("txt_empresa"), TextBox)
        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        empresa.Text = v_empresa
    End Sub

    
End Class
