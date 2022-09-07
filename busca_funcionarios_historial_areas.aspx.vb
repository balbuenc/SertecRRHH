
Partial Class busca_funcionarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'verifico que se haya selecionado la empresa abrir cualquier ventana.
            If (Session("sv_empresa") Is Nothing) Then
                Response.Redirect("elegir_empresa.aspx")
            End If
        End If

        If Len(txt_campo.Text.Trim) = 0 Then
            txt_campo.Text = "%"
            grilla_funcionarios.DataBind()
        End If
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        'Valido que se haya seleccionado un funcionario
        Dim v_indice As Integer

        v_indice = grilla_funcionarios.SelectedIndex

        If v_indice = -1 Then
            lb_mensaje.Text = "Por favor seleccione un Funcionario."
        Else
            ClientScript.RegisterStartupScript(GetType(String), "NewWinScript", "Seleccionar('" + grilla_funcionarios.SelectedDataKey.Value.ToString + "');", True)
        End If
    End Sub

    Protected Sub grilla_funcionarios_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grilla_funcionarios.SelectedIndexChanged

    End Sub
End Class
