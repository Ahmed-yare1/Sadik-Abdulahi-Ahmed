Imports System.Data
Imports System.Data.SqlClient
Public Class forget

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
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        connect()
        sql = " select * from uses where Username = ' " & Txtuname.Text & " ' and Email= ' " & Txtemail.Text & " '  "
        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader
        If dr.Read = True Then
            Label1.Text = dr.Item(5)
            'lblusername.Text = Txtuname.Text
        Else
            'MsgBox("Wrong Info")
            Label2.Text = "Wrong Info"
        End If

    End Sub
End Class