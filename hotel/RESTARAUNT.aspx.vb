Imports System.Data
Imports System.Data.SqlClient
Public Class RESTARAUNT
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


        'Dropdrinks.SelectedItem.Text = 1
        If Dropfoods.SelectedValue = "1" Then
            Txtamount.Text = 2 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "2" Then
            Txtamount.Text = 4 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "3" Then
            Txtamount.Text = 2 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "4" Then
            Txtamount.Text = 4 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "5" Then
            Txtamount.Text = 3 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "6" Then
            Txtamount.Text = 4 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "7" Then
            Txtamount.Text = 4 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "8" Then
            Txtamount.Text = 10 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "9" Then
            Txtamount.Text = 4 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "10" Then
            Txtamount.Text = 3 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "11" Then
            Txtamount.Text = 2 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "12" Then
            Txtamount.Text = 2 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "13" Then
            Txtamount.Text = 10 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "14" Then
            Txtamount.Text = 2 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "15" Then
            Txtamount.Text = 14 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "16" Then
            Txtamount.Text = 14 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "17" Then
            Txtamount.Text = 1.05 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "18" Then
            Txtamount.Text = 1.5 * Txtdrinkfoodwant.Text

        ElseIf Dropfoods.SelectedValue = "19" Then
            Txtamount.Text = 1.5 * Txtdrinkfoodwant.Text
        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sql As String
        connect()
        sql = "insert into restaraunt values('" & TxtID.Text & "','" & Txtfname.Text & "','" & Txtlname.Text & "','" & Dropfoods.Text & "','" & Dropdrinks.Text & "','" & Txtdrinkfoodwant.Text & "','" & Txtdate.Text & "','" & Txtemail.Text & "','" & Txtaddress.Text & "','" & Txtphone.Text & "','" & Txtamount.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label12.Text = "Data Was Saved"
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("loginpage.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        connect()
        sql = "delete from restaraunt where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label12.Text = "Data Was Deleted"
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        connect()
        sql = "update restaraunt set UserID='" & TxtID.Text & "', Fname='" & Txtfname.Text & "',Lname='" & Txtlname.Text & "',FoodType='" & Dropfoods.Text & "',DrinkType='" & Dropdrinks.Text & "',Foods_And_Drinks_Want ='" & Txtdrinkfoodwant.Text & "',Date='" & Txtdate.Text & "', Email='" & Txtemail.Text & "', Address='" & Txtaddress.Text & "',PhoneNo='" & Txtphone.Text & "', AmountDeposited='" & Txtamount.Text & "' where UserID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label12.Text = "Data Was Updated"
    End Sub

    Protected Sub TxtID_TextChanged(sender As Object, e As EventArgs) Handles TxtID.TextChanged
        'sql = " select * from restaraunt where ID='" & TxtID.Text & "'"
        'objcmd = New SqlCommand(sql, objcon)
        'dr = objcmd.ExecuteReader
        'If dr.Read = True Then
        '    Label12.Text = "ID Alreday Exists"
        'End If
    End Sub
End Class