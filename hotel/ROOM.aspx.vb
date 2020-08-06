Imports System.Data
Imports System.Data.SqlClient
Public Class ROOM
    Inherits System.Web.UI.Page
    Public objcon As New SqlConnection
    Public objcmd As New SqlCommand
    Public dr As SqlDataReader
    Public ds As New DataSet
    Public da As New SqlDataAdapter
    Public sql As String
    Sub connect()
        If Not objcon.State = ConnectionState.Open Then
            objcon.ConnectionString = "Data source=DESKTOP-DDVC9T8L; initial catalog= HOTEL1; integrated security=true"
            objcon.Open()
            Exit Sub

        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Droproomtype.SelectedValue = "1" Then
            Txtamount.Text = 50 * Droproomswant.SelectedItem.Text * Txtdays.Text

        ElseIf Droproomtype.SelectedValue = "2" Then

            Txtamount.Text = 90 * Droproomswant.SelectedItem.Text * Txtdays.Text

        ElseIf Droproomtype.SelectedValue = "3" Then
            Txtamount.Text = 60 * Droproomswant.SelectedItem.Text * Txtdays.Text

        ElseIf Droproomtype.SelectedValue = "4" Then
            Txtamount.Text = 100 * Droproomswant.SelectedItem.Text * Txtdays.Text

        ElseIf Droproomtype.SelectedValue = "5" Then
            Txtamount.Text = 120 * Droproomswant.SelectedItem.Text * Txtdays.Text

        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sql As String
        connect()
        sql = "insert into Rooms values('" & TxtID.Text & "','" & Txtfname.Text & "','" & Txtlname.Text & "','" & Droproomtype.Text & "','" & Droproomswant.Text & "','" & Txtdays.Text & "','" & Txtin.Text & "','" & Txtout.Text & "','" & Dropmember.Text & "','" & Txtemail.Text & "','" & Txtphone.Text & "','" & Txtamount.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label1.Text = "Data Was Saved"
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        connect()
        sql = "delete from Rooms where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label1.Text = "Data Was Deleted"
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Response.Redirect("loginpage.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        connect()
        sql = "update Rooms set UserID='" & TxtID.Text & "', Fname='" & Txtfname.Text & "',Lname='" & Txtlname.Text & "',RoomType='" & Droproomtype.Text & "',RoomNo='" & Droproomswant.Text & "',Days ='" & Txtdays.Text & "',Checkin='" & Txtin.Text & "',Checkout='" & Txtout.Text & "',MemberType ='" & Dropmember.Text & "', Email='" & Txtemail.Text & "',PhoneNo='" & Txtphone.Text & "', AmountDeposited='" & Txtamount.Text & "' where UserID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label1.Text = "Data Was Updated"
    End Sub

    Protected Sub TxtID_TextChanged(sender As Object, e As EventArgs) Handles TxtID.TextChanged
        'sql = " select * from Rooms where ID='" & TxtID.Text & "'"
        'objcmd = New SqlCommand(sql, objcon)
        'dr = objcmd.ExecuteReader
        'If dr.Read = True Then
        '    Label1.Text = "ID Alreday Exists"
        'End If
    End Sub
End Class