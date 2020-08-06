Imports System.Data
Imports System.Data.SqlClient
Public Class Sign_Up

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
        Dim sql As String
        connect()
        sql = "insert into uses values('" & Txtfname.Text & "','" & Txtlname.Text & "','" & Txtuname.Text & "','" & Txtemail.Text & "','" & Txtbirth.Text & "','" & Txtpass.Text & "')"
        'sql = "insert into user values('" & Txtfname.Text & "','" & Txtlname.Text & "','" & Txtuname.Text & "','" & Txtemail.Text & "','" & Txtbirth.Text & "','" & Txtpass.Text & "','" & Txtpassr.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label1.Text = "Account was Created"
    End Sub
End Class