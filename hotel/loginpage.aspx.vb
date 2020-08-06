Imports System.Data
Imports System.Data.SqlClient
Public Class loginpage
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

    Protected Sub Login_Click(sender As Object, e As EventArgs) Handles Login.Click
        If Txtuname.Text = "" Or Txtpass.Text = "" Then
            Label1.Text = "Please fill the blank"
            Exit Sub

        End If
        Session("Username") = TxtUName.Text
        connect()
        sql = "select * from uses where Username='" & Txtuname.Text & "' and Password='" & Txtpass.Text & "'"
        objcmd = New SqlCommand(Sql, objcon)
        dr = objcmd.ExecuteReader
        If dr.Read = True Then
            Session("Username") = dr.Item(0)
            Server.Transfer("Home.aspx")
        Else
            Label1.Text = "Invalid user name or password"


        End If


    End Sub
End Class