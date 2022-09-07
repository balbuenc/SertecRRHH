
Partial Class man_variables
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txt_filtra.Text = "%"
        End If

    End Sub

    Protected Sub form_variables_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles form_variables.DataBound

        If form_variables.CurrentMode = FormViewMode.Insert Then
            Dim select_campo As TextBox = CType(form_variables.Row.FindControl("select_campoTextBox"), TextBox)
            Dim where_condicion As TextBox = CType(form_variables.Row.FindControl("where_condicionTextBox"), TextBox)
            Dim from_tabla As TextBox = CType(form_variables.Row.FindControl("from_tablaTextBox"), TextBox)

            select_campo.Text = "importe_impresion"
            where_condicion.Text = "cod_concepto = "
            from_tabla.text = "conceptos_tmp"
        End If


    End Sub

   
End Class

