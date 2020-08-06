Imports System.Data
Imports System.Data.SqlClient
Public Class CAFFETERIA
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
        If Dropdrinktype.SelectedValue = "1" Then
            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "2" Then

            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "3" Then
            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "4" Then
            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "5" Then
            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "6" Then
            Txtamount.Text = 1 * Txtcups.Text

        ElseIf Dropdrinktype.SelectedValue = "7" Then
            Txtamount.Text = 1 * Txtcups.Text
        End If
    End Sub



    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sql As String
        connect()
        sql = "insert into cafe values('" & TxtID.Text & "','" & Txtfname.Text & "','" & Txtlname.Text & "','" & Dropdrinktype.Text & "','" & Txtcups.Text & "','" & Txtdate.Text & "','" & Txtemail.Text & "','" & Txtaddress.Text & "','" & Txtphone.Text & "','" & Txtamount.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label10.Text = "Data Was Saved"
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        connect()
        sql = "delete from cafe where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label10.Text = "Deleted"

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("loginpage.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        connect()
        sql = "update cafe set UserID='" & TxtID.Text & "', Fname='" & Txtfname.Text & "',Lname='" & Txtlname.Text & "',Drinks='" & Dropdrinktype.Text & "',Cups='" & Txtcups.Text & "', Email='" & Txtemail.Text & "', Address='" & Txtaddress.Text & "',PhoneNo='" & Txtphone.Text & "', AmountDeposited='" & Txtamount.Text & "' where UserID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label1.Text = "Data Was Updated"
    End Sub

    Protected Sub TxtID_TextChanged(sender As Object, e As EventArgs) Handles TxtID.TextChanged
        sql = " select * from cafe where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader
        If dr.Read = True Then
            Label1.Text = "ID Alreday Exists"
        End If

    End Sub
End Class