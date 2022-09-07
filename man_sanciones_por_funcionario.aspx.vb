
Partial Class man_amonestaciones
    Inherits System.Web.UI.Page

    Dim fecha_rv As RequiredFieldValidator
    Dim sancion_rv As RequiredFieldValidator

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Esta función habilita RequiredFieldValidator en los campos Fecha y Sanción
        fecha_rv = CType(form_sanciones_funcionarios.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        sancion_rv = CType(form_sanciones_funcionarios.Row.FindControl("rv_sancion"), RequiredFieldValidator)

        fecha_rv.Enabled = True
        sancion_rv.Enabled = True


        'Esta función carga en una variable  de tipo TextBox el codigo del funcionario seleccionado en el buscador 
        'y lo carga al campo al momento de realizar la inserción.
        Dim txt_cod_funcionario As TextBox = CType(form_sanciones_funcionarios.Row.FindControl("cod_funcionarioTextBox"), TextBox)
        txt_cod_funcionario.Text = hf_cod_funcionario.Value

        If txt_cod_funcionario.Text.Trim = "" Or sancion_rv.Text.Trim = "" Or fecha_rv.Text.Trim = "" Then
            Exit Sub
        End If
    End Sub

    Protected Sub form_sanciones_funcionarios_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_sanciones_funcionarios.ItemInserted
        fecha_rv = CType(form_sanciones_funcionarios.Row.FindControl("rv_fecha"), RequiredFieldValidator)
        sancion_rv = CType(form_sanciones_funcionarios.Row.FindControl("rv_sancion"), RequiredFieldValidator)

        fecha_rv.Enabled = False
        sancion_rv.Enabled = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = " "
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If
    End Sub
End Class
