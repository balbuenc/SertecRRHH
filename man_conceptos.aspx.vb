Imports System.Data.SqlClient
Imports System.Data

Partial Class man_conceptos
    Inherits System.Web.UI.Page

    Dim bandera As Boolean = False
    Dim rv_condicion As RequiredFieldValidator
    Dim rv_formula As RequiredFieldValidator


    Protected Sub InsertButton_condición_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        rv_condicion = CType(form_concepto_condiciones.Row.FindControl("rv_condicion_form_condicion"), RequiredFieldValidator)
        rv_formula = CType(form_concepto_condiciones.Row.FindControl("rv_formula_form_condicion"), RequiredFieldValidator)

        rv_condicion.Enabled = True
        rv_formula.Enabled = True

        'Esta instruccion se encarga de tomar el valor del codigo del concepto de la cabecera y lo inserta en el detalle
        Dim cod_concepto As Label = CType(form_conceptos.Row.FindControl("cod_conceptoLabel"), Label)
        Dim txt_cod_concepto As TextBox = CType(form_concepto_condiciones.Row.FindControl("cod_conceptoTextBox"), TextBox)

        txt_cod_concepto.Text = cod_concepto.Text
    End Sub

    Protected Sub form_conceptos_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles form_conceptos.DataBound

        'Aquí lleno los campos dándoles valores por defecto para que no se inserten en blanco en la base de datos.
        'También se verifica que el formulario Conceptos_condiciones no esté visible en el Modo de Inserción y Modo Edición 
        'del Form Concepto.
        Dim condicion As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_condicional"), RadioButtonList)
        Dim automatico As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_automanual"), RadioButtonList)
        Dim numero_formula As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_numero_formula"), RadioButtonList)
        Dim incluir_recibo As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_incluye_recibo"), RadioButtonList)
        'Definicion de variables del modo de inserción del Form Concepto.
        Dim condicion_edit As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_condicional_edit"), RadioButtonList)
        Dim formula As TextBox = CType(form_conceptos.Row.FindControl("formulaTextBox"), TextBox)

        'Controles del Form de Inserción de Fórmula y Condición para Conceptos

        If form_conceptos.CurrentMode = FormViewMode.Insert Then

            automatico.Text = "M"
            numero_formula.Text = "F"
            incluir_recibo.Text = "S"
            condicion.Text = "N"

            form_concepto_condiciones.Visible = False
            grid_condiciones.Visible = False

        ElseIf form_conceptos.CurrentMode = FormViewMode.Edit Then
            'Vuelve a preguntar si el concepto es Condicional en el Modo de Edición si es Si Bloquea el campo Fórmula.

            ViewState.Item("formula") = formula.Text 'Captura lo que esta dentro del Textbox Formula

            If condicion_edit.SelectedValue = "S" Then

                'ViewState.Item("formula") = formula.Text
                formula.Enabled = False
                formula.Text = "Campo Bloqueado"

                'Si es No habilita el campo Fórmula para el concepto seleccionado.
            ElseIf condicion_edit.SelectedValue = "N" Then

                formula.Enabled = True
                formula.BackColor = Drawing.Color.White
                formula.Text = CType(ViewState.Item("formula"), String)

            End If

            form_concepto_condiciones.Visible = False
            grid_condiciones.Visible = False
        Else

            form_concepto_condiciones.Visible = True
            grid_condiciones.Visible = True
        End If

        If form_conceptos.DataItemCount > 0 Then
            'Consulta si bloquea o No los campos de Form_condiciones_conceptos 
            If form_conceptos.CurrentMode = FormViewMode.ReadOnly Then

                form_concepto_condiciones.Visible = True

                Dim v_concepto As Label = CType(form_conceptos.Row.FindControl("cod_conceptoLabel"), Label)

                hf_cod_concepto1.Value = v_concepto.Text
                form_concepto_condiciones.DataBind()

                Dim condicion_concepto As TextBox = CType(form_concepto_condiciones.Row.FindControl("condicionTextBox"), TextBox)
                Dim formula_concepto As TextBox = CType(form_concepto_condiciones.Row.FindControl("formulaTextBox"), TextBox)
                Dim descripcion As TextBox = CType(form_concepto_condiciones.Row.FindControl("descripcionTextBox_condicion"), TextBox)
                Dim boton_inserta_codicion As ImageButton = CType(form_concepto_condiciones.Row.FindControl("InsertButton_condición"), ImageButton)
                Dim boton_cancela_codicion As ImageButton = CType(form_concepto_condiciones.Row.FindControl("InsertCancelButton_condicion"), ImageButton)
                Dim condicion_item As Label = CType(form_conceptos.Row.FindControl("es_condicionalLabel"), Label)


                If condicion_item.Text = "NO" Then

                    'Se deshabilita los campos del form de Condiciones y fórmulas.
                    condicion_concepto.Enabled = False
                    condicion_concepto.Text = "Campo Bloqueado"
                    formula_concepto.Enabled = False
                    formula_concepto.Text = "Campo Bloqueado"
                    descripcion.Enabled = False
                    descripcion.Text = "Campo Bloqueado"
                    boton_cancela_codicion.Enabled = False
                    boton_inserta_codicion.Enabled = False
                    'form_concepto_condiciones.Enabled = False

                ElseIf condicion_item.Text = "SI" Then

                    'Se habititan los controles del form de Condiciones y fórmulas
                    condicion_concepto.Enabled = True
                    condicion_concepto.Text = ""
                    formula_concepto.Enabled = True
                    formula_concepto.Text = ""
                    descripcion.Enabled = True
                    descripcion.Text = ""
                    boton_cancela_codicion.Enabled = True
                    boton_inserta_codicion.Enabled = True
                    'form_concepto_condiciones.Enabled = True


                End If

            End If

        ElseIf form_conceptos.DataItemCount = 0 Then
            form_concepto_condiciones.Visible = False
            grid_condiciones.Visible = False

        End If

    End Sub

    Protected Sub form_conceptos_ItemDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeleteEventArgs) Handles form_conceptos.ItemDeleting
        'Con esta instrucción se valida si el proceso de eliminación del concepto será ejecutado dependiendo del caso.
        'Si es 0(cero) No tiene historial y se realiza la eliminacion correspondiente
        If hf_valida.Value = 0 Then

            e.Cancel = False
            'Si es 1(uno) el concepto si tiene historial y se detiene la ejecución del evento del Boton eliminar.
        ElseIf hf_valida.Value = 1 Then

            e.Cancel = True

        End If
    End Sub

    Protected Sub form_conceptos_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_conceptos.ItemInserted
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString

        'Se establece la conexion
        conexion = New SqlConnection(conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_inserta_Liquidaciones_conceptos"

        comando.Parameters.AddWithValue("@empresa", v_empresa)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msg", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        Try
            comando.ExecuteNonQuery()

            lb_mensaje.Text = comando.Parameters.Item(1).Value
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
        
        conexion.Close()
        bandera = False

    End Sub

    Protected Sub DeleteButton_cabecera_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        '***************************************************************************
        'Este procedimiento se encarga de verificar si es posible o no eliminar el concepto seleccionado
        'Si ya tiene histórico generado no lo borra. Si no tiene histórico si lo borra, de las tablas Liquidaciones_Conceptos
        'y Funcionarios_conceptos.
        '***************************************************************************
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim cod_concepto1 As Label = CType(form_conceptos.Row.FindControl("cod_conceptoLabel"), Label)

        'Se establece la conexion
        conexion = New SqlConnection(conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion
        comando.CommandText = "usp_eliminar_conceptos"

        comando.Parameters.AddWithValue("@cod_empresa", CInt(Session("sv_empresa")))
        comando.Parameters.AddWithValue("@cod_concepto", cod_concepto1.Text)


        Dim v_valida As SqlParameter = New SqlParameter("@valida", Data.SqlDbType.Int)
        v_valida.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_valida)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msg", Data.SqlDbType.VarChar, 100)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.ExecuteNonQuery()

        hf_valida.Value = comando.Parameters.Item(2).Value
        lb_mensaje.Text = comando.Parameters.Item(3).Value
        conexion.Close()

        bandera = False
    End Sub

    Protected Sub InsertButton_cabecera_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Esta instruccion se encarga de tomar el valor del codigo de la empresa de la variable de sesion de empresa 
        Dim cod_empresa As TextBox = CType(form_conceptos.Row.FindControl("cod_empresaTextBox"), TextBox)
        Dim v_empresa As String
        v_empresa = Session("sv_empresa").ToString
        cod_empresa.Text = v_empresa
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lb_mensaje.Text = ""
        If Len(txt_filtra.Text.Trim) = 0 Then
            txt_filtra.Text = "%"
        End If
    End Sub

    Protected Sub rb_condicional_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        'Aqui verifica que opción se seleccionó en el Control Condicional del modo inserción del Formulario Conceptos
        'si es si deshabilita el campo Formula.
        Dim rb_condicional As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_condicional"), RadioButtonList)
        Dim formula As TextBox = CType(form_conceptos.Row.FindControl("formulaTextBox"), TextBox)

        If rb_condicional.SelectedValue = "S" Then

            formula.Enabled = False
            'formula.BackColor = Drawing.Color.LightGray
            formula.Text = "Campo Bloqueado"

        ElseIf rb_condicional.SelectedValue = "N" Then

            formula.Enabled = True
            formula.BackColor = Drawing.Color.White
            formula.Text = ""
        End If

    End Sub

    Protected Sub grid_guardar_edit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'Este procedimiento actualiza los campos del GridView de condiciones y formulas del concepto seleccionado.
        Dim v_indice As Integer
        v_indice = grid_condiciones.EditIndex

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim cod_concepto1 As Label = CType(form_conceptos.Row.FindControl("cod_conceptoLabel"), Label)
        Dim grid_condicion As TextBox = CType(grid_condiciones.Rows(v_indice).FindControl("txt_grid_condicion"), TextBox)
        Dim grid_formula As TextBox = CType(grid_condiciones.Rows(v_indice).FindControl("txt_grid_formula_edit"), TextBox)
        Dim grid_descripcion As TextBox = CType(grid_condiciones.Rows(v_indice).FindControl("txt_descripcion_edit"), TextBox)

        'Se establece la conexion
        conexion = New SqlConnection(conceptos_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "update conceptos_cond_form " + _
                                "SET condicion = @condicion, formula = @formula, descripcion= @descripcion " + _
                                "WHERE cod_concepto = @cod_concepto "

        comando.Parameters.AddWithValue("@cod_concepto", cod_concepto1.Text)
        comando.Parameters.AddWithValue("@condicion", grid_condicion.Text)
        comando.Parameters.AddWithValue("@formula", grid_formula.Text)
        comando.Parameters.AddWithValue("@descripcion", grid_descripcion.Text)


        comando.ExecuteNonQuery()

    End Sub

    Protected Sub form_concepto_condiciones_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles form_concepto_condiciones.ItemInserted

        rv_condicion = CType(form_concepto_condiciones.Row.FindControl("rv_condicion_form_condicion"), RequiredFieldValidator)
        rv_formula = CType(form_concepto_condiciones.Row.FindControl("rv_formula_form_condicion"), RequiredFieldValidator)

        rv_condicion.Enabled = True
        rv_formula.Enabled = True

    End Sub


    Protected Sub rb_condicional_edit_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        'Aqui verifica que opción se seleccionó en el Control Condicional del Modo edición del Formulario Conceptos
        'si es SI deshabilita el campo Formula.
        Dim rb_condicional As RadioButtonList = CType(form_conceptos.Row.FindControl("rb_condicional_edit"), RadioButtonList)
        Dim formula As TextBox = CType(form_conceptos.Row.FindControl("formulaTextBox"), TextBox)

        If rb_condicional.SelectedValue = "S" Then

            ViewState.Item("formula") = formula.Text

            formula.Enabled = False
            formula.Text = "Campo Bloqueado"

        ElseIf rb_condicional.SelectedValue = "N" Then

            formula.Enabled = True
            formula.BackColor = Drawing.Color.White
            formula.Text = CType(ViewState.Item("formula"), String)
        End If
    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Protected Sub form_conceptos_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles form_conceptos.ItemUpdating

        If e.NewValues("es_condicional") = "S" Then

            e.NewValues("formula") = ""

        End If

    End Sub

    Protected Sub form_conceptos_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles form_conceptos.PageIndexChanged

        'form_conceptos.DataBind()

    End Sub
End Class
