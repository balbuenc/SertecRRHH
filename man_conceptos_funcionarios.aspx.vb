Imports System.Web
Imports System.Web.Configuration

Imports System.Data
Imports System.Data.SqlClient

Partial Class coceptos_funcionarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_busca.Text.Trim) = 0 Then
            txt_busca.Text = "%"
        End If

        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = ""
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If

    End Sub

    Protected Sub img_modifica_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Aqui obtengo el valor del indice de la fila del Gridview que se ha seleccionado par la edición
        Dim v_indice As Integer
        v_indice = grid_concepto_funcionario.EditIndex

        Dim aplica As CheckBox = CType(grid_concepto_funcionario.Rows(v_indice).FindControl("check_edita"), CheckBox)
        Dim valida As HiddenField = CType(grid_concepto_funcionario.Rows(v_indice).FindControl("hf_aplica"), HiddenField)


        If aplica.Checked = False Then
            valida.Value = "NO"
        Else
            valida.Value = "SI"
        End If

    End Sub

    Private Sub ToggleCheckState(ByVal aplica As String)
        'Aqui corre el procedimiento que actualiza la tabla funcionarios conceptos aplicando (SI/NO) dependiendo de que boton 
        'Selecciono el usuario.
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString

        'Se establece la conexion
        conexion = New SqlConnection(conceptos_funcionarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE funcionarios_conceptos " + _
                                "SET aplica = @aplica " + _
                                "WHERE cod_tipo_liquidacion = @cod_tipo_liquidacion " + _
                                "AND cod_empresa = @empresa " + _
                                "AND cod_funcionario = @cod_funcionario "

        comando.Parameters.AddWithValue("@aplica ", aplica)
        comando.Parameters.AddWithValue("@cod_tipo_liquidacion", ddl_tipo_liquidacion.SelectedValue)
        comando.Parameters.AddWithValue("@empresa", v_empresa)
        comando.Parameters.AddWithValue("@cod_funcionario", hf_cod_funcionario.Value)
        comando.ExecuteNonQuery()

        grid_concepto_funcionario.DataBind()

    End Sub

    Protected Sub checkall_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles checkall.Click

        ToggleCheckState("SI")

    End Sub

    Protected Sub uncheckall_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles uncheckall.Click

        ToggleCheckState("NO")

    End Sub

    Protected Sub grid_concepto_funcionario_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid_concepto_funcionario.DataBound
        If grid_concepto_funcionario.Rows.Count = 0 Then

            checkall.Visible = False
            uncheckall.Visible = False
        Else
            checkall.Visible = True
            uncheckall.Visible = True

        End If
    End Sub
End Class
