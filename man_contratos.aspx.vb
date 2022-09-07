﻿
Partial Class man_contratos
    Inherits System.Web.UI.Page
    Dim descripcion_rv As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_descripcion.Text.Trim) = 0 Then
            txt_descripcion.Text = "%"

        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion_rv = CType(form_contratos.Row.FindControl("rv_descripcion"), RequiredFieldValidator)

        descripcion_rv.Enabled = True

    End Sub

    Protected Sub form_contratos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_contratos.ItemInserted
        descripcion_rv = CType(form_contratos.Row.FindControl("rv_descripcion"), RequiredFieldValidator)

        descripcion_rv.Enabled = False

    End Sub
End Class
