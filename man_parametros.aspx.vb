
Partial Class man_parametros
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_campo.Text.Trim) = 0 Then
            txt_campo.Text = "%"
        End If

    End Sub
End Class
