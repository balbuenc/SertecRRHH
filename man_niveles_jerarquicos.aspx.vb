Imports System.Data.SqlClient
Imports System.Data

Partial Class man_niveles_jerarquicos
    Inherits System.Web.UI.Page
    Dim descripcion As RequiredFieldValidator


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_busca.Text.Trim) = 0 Then
            txt_busca.Text = "%"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        descripcion = CType(form_niveles_jerarquicos.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = True

        Dim empresa As TextBox = CType(form_niveles_jerarquicos.Row.FindControl("cod_empresaTextBox"), TextBox)
        Dim v_empresa As String

        v_empresa = Session("sv_empresa").ToString
        empresa.Text = v_empresa

    End Sub

    Protected Sub form_niveles_jerarquicos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_niveles_jerarquicos.ItemInserted
        descripcion = CType(form_niveles_jerarquicos.Row.FindControl("rv_descripcion"), RequiredFieldValidator)
        descripcion.Enabled = False

    End Sub

    Protected Sub ImageButton1_grid_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Dim v_indice As Integer
        v_indice = grid_niveles_jerarquicos.EditIndex

        Dim nivel_jerarquico As Label = CType(grid_niveles_jerarquicos.Rows(v_indice).FindControl("lbl_cod_nivel_jerarquico_edit"), Label)
        Dim grid_descripcion As TextBox = CType(grid_niveles_jerarquicos.Rows(v_indice).FindControl("txt_descripcion_edit"), TextBox)

        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString

        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(niveles_jerarquicos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE niveles_jerarquicos " + _
                                "SET descripcion = @descripcion " + _
                                "WHERE cod_empresa = @cod_empresa " + _
                                "AND cod_nivel_jerarquico = @cod_nivel_jerarquico "

        comando.Parameters.AddWithValue("@descripcion", grid_descripcion.Text)
        comando.Parameters.AddWithValue("@cod_empresa", v_empresa)
        comando.Parameters.AddWithValue("@cod_nivel_jerarquico", nivel_jerarquico.Text)

        comando.ExecuteNonQuery()
        conexion.Close()



    End Sub
End Class
