
Partial Class elejir_empresa
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        'Valido que se haya seleccionado una empresa para llamar al Menu Principal
        Dim v_indice As Integer

        v_indice = grilla_empresas.SelectedIndex

        If v_indice = -1 Then

            lb_mensaje.Text = "Por favor seleccione una Empresa."
        Else

            Session("sv_empresa") = grilla_empresas.SelectedDataKey.Value

            Dim descri As Label = CType(grilla_empresas.Rows(grilla_empresas.SelectedIndex).FindControl("Label2"), Label)
            Session("sv_empresa_descri") = descri.Text

            Response.Redirect("home.aspx")

        End If
    End Sub

   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then           
				lb_user.Text = Page.User.Identity.Name + "@" 		
        End If
    End Sub


    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        Dim script As String = "javascript:window.open('','_parent','');window.close();"
        Dim page As Page = DirectCast(Context.Handler, Page)
        ScriptManager.RegisterStartupScript(page, GetType(Page), "cerrar", script, True)

    End Sub

End Class
