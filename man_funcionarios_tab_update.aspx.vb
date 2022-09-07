Imports System.Data.SqlClient
Imports System.Data


Partial Class man_funcionarios
    Inherits System.Web.UI.Page

    'constantes
    Const RENDER_COMMAND As String = "&rs:Command=Render"
    Const TOOLBAR As String = "&rc:Toolbar="
    Const ZOOM As String = "&rc:Zoom="


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Call obtener_servidor_reporte()
        End If
        lb_mensaje.Text = ""

        If Request.QueryString("cod_funcionario") Is Nothing Then
            hf_cod_funcionario.Value = "%"
        Else
            Me.hf_cod_funcionario.Value = Request.QueryString("cod_funcionario").ToString()
        End If
    End Sub

    Protected Sub menu_item_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs)

        Dim mv_item As MultiView = CType(FormView1.Row.FindControl("mv_item"), MultiView)
        mv_item.ActiveViewIndex = Int32.Parse(e.Item.Value)

        Dim menu_item As Menu = CType(FormView1.Row.FindControl("menu_item"), Menu)

        If e.Item.Value = 0 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 1 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 2 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 3 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 4 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 5 Then
            menu_item.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_item.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_item.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_item.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_item.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_item.Items(5).ImageUrl = "~/images/menu/Gourmet_1.gif"
        End If

    End Sub

    Protected Sub menu_editar_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs)

        Dim mv_editar As MultiView = CType(FormView1.Row.FindControl("mv_editar"), MultiView)
        mv_editar.ActiveViewIndex = Int32.Parse(e.Item.Value)

        Dim menu_editar As Menu = CType(FormView1.Row.FindControl("menu_editar"), Menu)

        If e.Item.Value = 0 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 1 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 2 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 3 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 4 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 5 Then
            menu_editar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_editar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_editar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_editar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_editar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_editar.Items(5).ImageUrl = "~/images/menu/Gourmet_1.gif"
        End If
    End Sub

    Protected Sub menu_insertar_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs)

        Dim mv_insertar As MultiView = CType(FormView1.Row.FindControl("mv_insertar"), MultiView)
        mv_insertar.ActiveViewIndex = Int32.Parse(e.Item.Value)

        Dim menu_insertar As Menu = CType(FormView1.Row.FindControl("menu_insertar"), Menu)

        If e.Item.Value = 0 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 1 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 2 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 3 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 4 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_apagado_1.gif"

        ElseIf e.Item.Value = 5 Then
            menu_insertar.Items(0).ImageUrl = "~/images/menu/Empresa_apagado_1.gif"
            menu_insertar.Items(1).ImageUrl = "~/images/menu/Personales_apagado_1.gif"
            menu_insertar.Items(2).ImageUrl = "~/images/menu/Familiares_apagado_1.gif"
            menu_insertar.Items(3).ImageUrl = "~/images/menu/M.J.T._apagado_1.gif"
            menu_insertar.Items(4).ImageUrl = "~/images/menu/Capacitaciones_apagado_1.gif"
            menu_insertar.Items(5).ImageUrl = "~/images/menu/Gourmet_1.gif"
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

        'Call carga_funcionarios_conceptos()

        ' Aca hago q regrese a la solapa de Datos Empresariales para que se ejecute los RequiredValidators
        Dim mv_insertar As MultiView = CType(FormView1.Row.FindControl("mv_insertar"), MultiView)
        mv_insertar.ActiveViewIndex = 0

        'Inserto el codigo de la empresa seleccionada
        Dim txt_empresa As HiddenField = CType(FormView1.Row.FindControl("hf_empresa_insert"), HiddenField)
        txt_empresa.Value = Session("sv_empresa").ToString

        'José Barrios. 
        'Impacto directamente en la base de datos el valor de las Horas, lo mismo para el Update
        Dim v_funcionario2 As TextBox = CType(FormView1.Row.FindControl("codigoTextBox"), TextBox)
        Dim v_horas1 As TextBox = CType(FormView1.Row.FindControl("horas_diaTexbox"), TextBox)

        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(funcionarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE funcionarios " + _
                                "SET horas_dia = @horas " + _
                                "WHERE codigo = @codigo "

        comando.Parameters.AddWithValue("@horas", v_horas1.Text)
        comando.Parameters.AddWithValue("@codigo", v_funcionario2.Text)

        comando.ExecuteNonQuery()
        conexion.Close()


    End Sub

    Protected Sub FormView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.DataBound

        'En el modo insertar pongo a modo de descripcion la empresa que fue seleccionada
        If FormView1.CurrentMode = FormViewMode.Insert Then
            Dim lb_empresa_descri_insert As Label = CType(FormView1.Row.FindControl("lb_empresa_descri_insert"), Label)
            lb_empresa_descri_insert.Text = Session("sv_empresa_descri").ToString
        End If

    End Sub

    Private Sub carga_funcionarios_conceptos()

        'Variables de conexion a datos
        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Variables de parametros
        Dim v_empresa As String
        'Dim v_funcionario As TextBox = CType(FormView1.Row.FindControl("codigoTextBox0"), TextBox)

        v_empresa = Session("sv_empresa").ToString

        'Se establece la conexion
        conexion = New SqlConnection(funcionarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.StoredProcedure
        comando.Connection = conexion

        comando.CommandText = "usp_abm_inserta_funcionarios_conceptos"
        'comando.CommandText = "pa_insertar_funcionarios_conceptos_funcionario"

        'comando.Parameters.AddWithValue("@p_cod_empleado", CInt(v_funcionario.Text))
        comando.Parameters.AddWithValue("@p_cod_empresa", v_empresa)
        'comando.Parameters.AddWithValue("@p_cod_funcionario", v_funcionario)

        Dim v_mensaje As SqlParameter = New SqlParameter("@msg", Data.SqlDbType.VarChar, 500)
        v_mensaje.Direction = ParameterDirection.Output
        comando.Parameters.Add(v_mensaje)

        comando.CommandTimeout = 0
        comando.ExecuteNonQuery()

        'lb_mensaje.Text = comando.Parameters.Item(1).Value.ToString
        conexion.Close()

    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

        Dim v_funcionario As Label = CType(FormView1.Row.FindControl("cod_funcionarioLabel"), Label)

        'se genera la url
        Dim url As String
        url = lb_server.Text + "?" + _
        "/funcionarios/" + "funcionario_ficha" + _
        RENDER_COMMAND

        url += "&cod_funcionario=" + v_funcionario.Text

        Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder()
        sb.Append("window.open('")
        sb.Append(url + "',")
        sb.Append("'mywindow', 'channelmode=1, toolbar=0, location=0, status=0, menubar=0, scrollbars=0, resizable=0'")
        sb.Append(");")

        ScriptManager.RegisterClientScriptBlock(Me.UpdatePanel1, Me.UpdatePanel1.GetType(), "NewWinScript", sb.ToString(), True)

    End Sub

    Private Sub obtener_servidor_reporte()

        Dim conexion As SqlConnection
        Dim comando As SqlCommand
        Dim dr As SqlDataReader

        conexion = New SqlConnection(funcionarios_con.ConnectionString)
        conexion.Open()
        comando = New SqlCommand("select * from parametros where cod_empresa=@cod_empresa and campo=@campo", conexion)

        'comando.Parameters.AddWithValue("@cod_empresa", Session("sv_empresa").ToString)
        comando.Parameters.AddWithValue("@cod_empresa", "1")
        comando.Parameters.AddWithValue("@campo", "Servidor de Reportes")

        dr = comando.ExecuteReader()

        If dr.Read() Then
            lb_server.Text = dr("v_cadena")
        Else
            lb_server.Text = "No se ha especificado un Servidor de Reportes."
        End If

        dr.Close()
        conexion.Close()
    End Sub




    Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Call carga_funcionarios_conceptos()
    End Sub





    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        'PARA LAS HORAS POR DIA
        Dim v_funcionario1 As TextBox = CType(FormView1.Row.FindControl("codigoTextBox0"), TextBox)
        Dim v_horas As TextBox = CType(FormView1.Row.FindControl("horas_diaTexBox"), TextBox)
        Dim v_trabaja As RadioButtonList = CType(FormView1.Row.FindControl("rb_trabaja"), RadioButtonList)

        Dim conexion As SqlConnection
        Dim comando As SqlCommand

        'Se establece la conexion
        conexion = New SqlConnection(funcionarios_con.ConnectionString)
        conexion.Open()

        comando = New SqlCommand()
        comando.CommandType = Data.CommandType.Text
        comando.Connection = conexion
        comando.CommandText = "UPDATE funcionarios " + _
                                "SET horas_dia = @horas, trabaja_sabado = @trabaja " + _
                                "WHERE codigo = @cod_funcionario "

        comando.Parameters.AddWithValue("@horas", v_horas.Text)
        comando.Parameters.AddWithValue("@trabaja", v_trabaja.SelectedValue)
        comando.Parameters.AddWithValue("@cod_funcionario", v_funcionario1.Text)

        comando.ExecuteNonQuery()
        conexion.Close()

        'PARA LOS DIAS QUE TRABAJA SABADO


        'Dim conexion1 As SqlConnection
        'Dim comando1 As SqlCommand

        ''Se establece la conexion
        'conexion1 = New SqlConnection(funcionarios_con.ConnectionString)
        'conexion1.Open()

        'comando1 = New SqlCommand()
        'comando1.CommandType = Data.CommandType.Text
        'comando1.Connection = conexion
        'comando1.CommandText = "UPDATE funcionarios " + _
        '                        "SET trabaja_sabado = @trabaja " + _
        '                        "WHERE codigo = @codigo "

        'comando1.Parameters.AddWithValue("@trabaja", v_trabaja.SelectedValue)
        'comando1.Parameters.AddWithValue("@codigo", v_funcionario1.Text)

        'comando1.ExecuteNonQuery()
        'conexion.Close()



    End Sub

  
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        FormView1.ChangeMode(FormViewMode.Insert)
    End Sub

    
End Class