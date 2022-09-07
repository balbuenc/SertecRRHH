Imports System.Data.SqlClient
Imports System.Data

Partial Class man_funcionarios_historico
    Inherits System.Web.UI.Page

   
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                setValoresActuales()
            End If

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try


    End Sub

    Private Sub setValoresActuales()
      
        Try
            FuncionarioDS.Select(DataSourceSelectArguments.Empty)


            Dim dv As DataView
            Dim FuncionarioDSFilas As Integer

            dv = CType(FuncionarioDS.Select(DataSourceSelectArguments.Empty), DataView)
            FuncionarioDSFilas = dv.Table.Rows.Count

            If (FuncionarioDSFilas > 0) Then
                confidencial_DropDownList.SelectedValue = dv.Table.Rows(0)(1)
                remuneracion_DropDownList.SelectedValue = dv.Table.Rows(0)(2)
                jefes_DropDownList.SelectedValue = dv.Table.Rows(0)(22)
                area_DropDownList.SelectedValue = dv.Table.Rows(0)(12)
                cargos_DropDownList.SelectedValue = dv.Table.Rows(0)(17)
                nivelesSalariales_DropDownList.SelectedValue = dv.Table.Rows(0)(14)

                NivelJerarquico_DropDownList.SelectedValue = dv.Table.Rows(0)(20)
                contrato_DropDownList.SelectedValue = dv.Table.Rows(0)(21)
                catejoriaMJT_DropDownList.SelectedValue = dv.Table.Rows(0)(46)
                bancos_DropDownList.SelectedValue = dv.Table.Rows(0)(25)
                gerencias_DropDownList.SelectedValue = dv.Table.Rows(0)(11)
            End If
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub

    Protected Sub ModificarBTN_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ModificarBTN.Click
        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Actualizo el registro del funcionario
        Try

            'Se establece la conexion
            conexion = New SqlConnection(FuncionarioDS.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "sp_actualizar_funcionario"

            comando.Parameters.AddWithValue("@p_cod_funcionario", Request.QueryString("p_cod_funcionario"))
            comando.Parameters.AddWithValue("@p_cod_gerencia", gerencias_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_area", area_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_nivel_jerarquico", NivelJerarquico_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_cargo", cargos_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_jefe", jefes_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_nivel_salarial", nivelesSalariales_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_contrato", contrato_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_categoria_mjt", catejoriaMJT_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_cod_banco", bancos_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_confidencial", confidencial_DropDownList.SelectedValue)
            comando.Parameters.AddWithValue("@p_tipo_remuneracion", remuneracion_DropDownList.SelectedValue)

            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()

            conexion.Close()
        Catch ex As Exception
            Response.Write("Error al actualizar Registro de funcionario, " + ex.Message)
        End Try

        'Agrego al historico
        Try
            'Se establece la conexion
            conexion = New SqlConnection(FuncionarioDS.ConnectionString)
            conexion.Open()

            comando = New SqlCommand()
            comando.CommandType = Data.CommandType.StoredProcedure
            comando.Connection = conexion
            comando.CommandText = "sp_crear_historico_funcionario"

            comando.Parameters.AddWithValue("@p_cod_funcionario", Request.QueryString("p_cod_funcionario"))
            comando.Parameters.AddWithValue("@p_motivo", DropDownList1.SelectedValue)
            comando.Parameters.AddWithValue("@p_fecha", Calendar1.SelectedDate)


            Dim v_mensaje As SqlParameter = New SqlParameter("@p_mensaje", Data.SqlDbType.VarChar, 100)
            v_mensaje.Direction = ParameterDirection.Output
            comando.Parameters.Add(v_mensaje)

            comando.CommandTimeout = 0
            comando.ExecuteNonQuery()


            lb_mensaje.Text = comando.Parameters.Item(3).Value
            conexion.Close()

           
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        'Voy de nuevo a la pagina de funcionarios
        Response.Redirect("man_funcionarios_tab.aspx")
    End Sub

    
End Class
