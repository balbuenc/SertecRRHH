


Partial Class man_funcionarios
    Inherits System.Web.UI.Page

    Protected Sub EditButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Protected Sub FormView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting

        'Dim txtBox As HiddenField = CType(FormView1.Row.FindControl("HiddenField1"), HiddenField)
        'txtBox.Value = 2

    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = "%"
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If
    End Sub

    
End Class
