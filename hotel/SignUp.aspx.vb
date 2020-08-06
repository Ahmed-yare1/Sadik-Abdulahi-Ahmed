Imports System.Data
Imports System.Data.SqlClient
Public Class SignUp
    Inherits Page
    Public objcon As New SqlConnection
    Public objcmd As New SqlCommand
    Public dr As SqlDataReader
    Public ds As New DataSet
    Public da As New SqlDataAdapter


    Sub connect()
        If Not objcon.State = ConnectionState.Open Then
            objcon.ConnectionString = "Data source=DESKTOP-DDVC9T8; initial catalog= hotel1; integrated security=true"
            objcon.Open()
            Exit Sub

        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Dim sql As String
        connect()
        sql = "insert into uses values('" & txtfname.Text & "','" & txtlname.Text & "','" & txtmail.Text & "','" & txtbirth.Text & "','" & txtpass.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label2.Text = "Account was Created"


    End Sub

End Class