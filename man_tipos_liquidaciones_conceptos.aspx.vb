Imports System.Web
Imports System.Web.Configuration

Imports System.Data
Imports System.Data.SqlClient

Partial Class man_tipos_liquidaciones_conceptos
    Inherits System.Web.UI.Page

       Private Sub ToggleCheckState(ByVal aplica As String)
        'Dependiendo del boton que el usuario seleccionó marcar todos/desmarcar todos, el update se ejecuta y aplica(SI/NO)a todos los conceptos.
        'para el tipo de liquidacion seleccionado
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(concepto_tipo_liquidacion_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE liquidaciones_conceptos " + _
                              "SET aplica = @aplica " + _
                              "WHERE cod_tipo_liquidacion = @cod_tipo_liquidacion"

        comando.Parameters.AddWithValue("@aplica ", aplica)
        comando.Parameters.AddWithValue("@cod_tipo_liquidacion", ddl_tipo_liquidacion.SelectedValue)

        comando.ExecuteNonQuery()

        conexion.Close()

        grid_concepto_tipo_liquidacion.DataBind()

    End Sub

    Protected Sub ChekAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChekAll.Click
        'Boton Marcar Todos
        ToggleCheckState("SI")

    End Sub

    Protected Sub UncheckAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles UncheckAll.Click
        'Boton desmarcar Todos
        ToggleCheckState("NO")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Len(txt_busca.Text.Trim) = 0 Then
            txt_busca.Text = "%"
        End If

        lb_mensaje.Text = ""

    End Sub

    Protected Sub grid_concepto_tipo_liquidacion_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid_concepto_tipo_liquidacion.DataBound
        'Verifica si el gridview de detalle contiene datos, si es Así muestra los botones de marcar y desmarcar todo.
        If grid_concepto_tipo_liquidacion.Rows.Count = 0 Then

            ChekAll.Visible = False
            UncheckAll.Visible = False
        Else
            ChekAll.Visible = True
            UncheckAll.Visible = True

        End If

        'Aqui se aplican los valores con que inicializaran los checks dentro del modo edit del gridview.
        If grid_concepto_tipo_liquidacion.EditIndex <> -1 Then

            'Variable que guarda el indice de la fila seleccionada en el gridview para ser editado.
            Dim v_indice As Integer
            v_indice = grid_concepto_tipo_liquidacion.EditIndex

            Dim aplica As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_edita"), CheckBox)

            Dim aplica_todos As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_valida_todos"), CheckBox)
            'Variable que guarda el valor del check aplica_todos
            Dim hf_aplica_todos As HiddenField = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("hf_aplica_todos"), HiddenField)

            'Si es TRUE el concepto se vuelve activo para todos los funcionarios
            If aplica.Checked = True Then

                aplica_todos.Visible = True
                aplica_todos.Enabled = True

                'Si el check Habilita_todos es TRUE el concepto se aplica para todos los funcionarios
                If aplica_todos.Checked = True Then

                    hf_aplica_todos.Value = "SI"

                    'Si el check Habilita_todos es FALSE el concepto queda activo pero no se aplica a todos los funcionarios
                ElseIf aplica_todos.Checked = False Then

                    hf_aplica_todos.Value = "NO"

                End If

                'Si es FALSE el concepto se vuelve inactivo y si no tiene historial generado se elimina de funcionarios_conceptos 
                'mediante ejecución de procedimiento almecenado. "usp_inserta_elimina_conceptos_funcionarios" 
            ElseIf aplica.Checked = False Then

                aplica_todos.Checked = False
                aplica_todos.Visible = False
                aplica_todos.Enabled = False

            End If

        End If
    End Sub

    Protected Sub img_grid_guardar_edit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'variable que obtiene el valor del indice del check que se esta seleccionando o editando
        Dim v_indice As Integer
        v_indice = grid_concepto_tipo_liquidacion.EditIndex

        Dim aplica As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_edita"), CheckBox)
        Dim valida As HiddenField = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("hf_aplica"), HiddenField)

        If aplica.Checked = False Then
            valida.Value = "NO"
        Else
            valida.Value = "SI"
        End If

        'ESto ejecuta un procedimiento que elimina el concepto que ya no pertenece a un cierto grupo de Liquidaciones
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim cod_concepto As Label = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("lb_cod_concepto_edit"), Label)
        'Variable para 
        Dim aplica_todos As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_valida_todos"), CheckBox)
        Dim hf_aplica_todos As HiddenField = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("hf_aplica_todos"), HiddenField)

        If aplica_todos.Checked = False Then
            hf_aplica_todos.Value = "NO"
        Else
            hf_aplica_todos.Value = "SI"
        End If

        'Se establece la conexion
        conexion = New SqlConnection(concepto_tipo_liquidacion_con.ConnectionString)
        conexion.Open()

        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        'Se ejecuta el procedimiento que se encarga de realizar las siguientes acciones: 
        'a-) Si el concepto NO tiene Historial: Se elimina de la tabla funcionarios_conceptos.
        'b-) Si el concepto SI tiene historial: Se deshabilita este concepto pero no se elimina de la tabla funcionarios_conceptos.
        'y se cambia el estado del concepto a Inactivo.
        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_inserta_elimina_conceptos_funcionarios"

        comando.Parameters.AddWithValue("@cod_tipo_liquidacion", ddl_tipo_liquidacion.SelectedValue)
        comando.Parameters.AddWithValue("@cod_empresa", v_empresa)
        comando.Parameters.AddWithValue("@cod_concepto", cod_concepto.Text)
        comando.Parameters.AddWithValue("@aplica", valida.Value)
        comando.Parameters.AddWithValue("@aplica_todos", hf_aplica_todos.Value)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msg", Data.SqlDbType.VarChar, 500)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.ExecuteNonQuery()

        lb_mensaje.Text = comando.Parameters.Item(5).Value
        conexion.Close()

    End Sub

    Protected Sub Check_edita_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim v_indice As Integer
        v_indice = grid_concepto_tipo_liquidacion.EditIndex

        Dim aplica As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_edita"), CheckBox)
        Dim aplica_todos As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_valida_todos"), CheckBox)

        Dim hf_aplica_todos As HiddenField = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("hf_aplica_todos"), HiddenField)

        If aplica.Checked = True Then

            aplica_todos.Visible = True
            aplica_todos.Enabled = True

            'If aplica_todos.Checked = True Then
            '    hf_aplica_todos.Value = "SI"
            'End If

        ElseIf aplica.Checked = False Then

            aplica_todos.Checked = False
            aplica_todos.Visible = False
            aplica_todos.Enabled = False

        End If
    End Sub

    Protected Sub grid_concepto_tipo_liquidacion_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles grid_concepto_tipo_liquidacion.RowUpdating
        Dim v_indice As Integer
        v_indice = e.RowIndex

        Dim aplica As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_edita"), CheckBox)
        Dim aplica_todos As CheckBox = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("check_valida_todos"), CheckBox)

        Dim hf_aplica_todos As HiddenField = CType(grid_concepto_tipo_liquidacion.Rows(v_indice).FindControl("hf_aplica_todos"), HiddenField)

        If aplica.Checked = True Then
            aplica_todos.Visible = True
            aplica_todos.Enabled = True

            If aplica_todos.Checked = True Then
                hf_aplica_todos.Value = "SI"
            End If

        Else
            aplica_todos.Visible = False

        End If
    End Sub
End Class
