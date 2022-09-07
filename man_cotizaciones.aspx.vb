
Partial Class man_cotizaciones
    Inherits System.Web.UI.Page
    Dim fecha_rv As RequiredFieldValidator
    Dim monto_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_busca.Text.Trim) = 0 Then
            txt_busca.Text = "%"

        End If

    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        fecha_rv = CType(form_cotizaciones.Row.FindControl("fecha"), RequiredFieldValidator)
        monto_rv = CType(form_cotizaciones.Row.FindControl("rv_monto"), RequiredFieldValidator)

        fecha_rv.Enabled = True
        monto_rv.Enabled = True

    End Sub

    Protected Sub form_cotizaciones_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_cotizaciones.ItemInserted
        fecha_rv = CType(form_cotizaciones.Row.FindControl("fecha"), RequiredFieldValidator)
        monto_rv = CType(form_cotizaciones.Row.FindControl("rv_monto"), RequiredFieldValidator)

        fecha_rv.Enabled = False
        monto_rv.Enabled = False

    End Sub
End Class
