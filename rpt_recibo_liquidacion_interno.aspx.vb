
Imports Microsoft.Reporting.WebForms

Partial Class rpt_recibo_liquidacion
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        reporte.ProcessingMode = ProcessingMode.Remote
        Dim serverReport As ServerReport
        serverReport = reporte.ServerReport

        'set the report server URL and report path
        serverReport.ReportServerUrl = New Uri(txt_server.Text)
        serverReport.ReportPath = txt_folder.Text + txt_nombre.Text

    End Sub
End Class
