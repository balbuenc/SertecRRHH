
Partial Class multi
    Inherits System.Web.UI.Page

    Protected Sub Menu_tab_insert_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs)

        Dim mv_editar As MultiView = CType(FormView1.Row.FindControl("mv_editar"), MultiView)
        mv_editar.ActiveViewIndex = Int32.Parse(e.Item.Value)

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim xxx As DropDownList = CType(FormView2.Row.FindControl("DropDownList1"), DropDownList)


        xxx.Items.Add("")
    End Sub
End Class
