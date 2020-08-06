Imports System.Data
Imports System.Data.SqlClient
Public Class data
    Inherits System.Web.UI.Page
    Public objcon As New SqlConnection
    Public objcmd As New SqlCommand
    Public dr As SqlDataReader
    Public ds As New DataSet
    Public da As New SqlDataAdapter
    Public sql As String

    Sub connect()
        If Not objcon.State = ConnectionState.Open Then
            objcon.ConnectionString = "Data source=DESKTOP-DDVC9T8; initial catalog= HOTEL1; integrated security=true"
            objcon.Open()
            Exit Sub

        End If
    End Sub
    'Sub display()
    '    Dim ds As New DataSet
    '    connect()
    '    sql = "Select * from Rooms"
    '    Dim objadapter = New SqlDataAdapter(sql, objcon)
    '    ds.Clear()
    '    objadapter.Fill(ds, "DG")
    '    GridView1.DataSource = ds.Tables("DG")

    'End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



End Class