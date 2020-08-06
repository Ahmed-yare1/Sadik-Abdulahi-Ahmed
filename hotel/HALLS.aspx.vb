Imports System.Data
Imports System.Data.SqlClient
Public Class HALLS
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
        display()
    End Sub
    Sub display()
        'Dim ds As New DataSet
        'connect()
        'sql = "Select * from hall"
        'Dim objadapter = New SqlDataAdapter(sql, objcon)
        'ds.Clear()
        'objadapter.Fill(ds, "DG")
        'GridView1.DataSource = ds.Tables("DG")
        'GridView1.DataSource = objds.Tables("Che").DefaultView
        'GridView1.Refresh()

        'connect()
        'sql = "select * from hall"
        'objcmd = New SqlCommand(sql, objcon)
        'da.SelectCommand = objcmd
        'ds.Clear()
        'da.Fill(ds, "Che")
        'GridView1.DataSource = ds.Tables("Che").DefaultView
        ''GridView1.Refresh()

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Drophalltype.SelectedValue = "1" Then
            Txtamount.Text = 8 * Txtchair.Text

        ElseIf Drophalltype.SelectedValue = "2" Then

            Txtamount.Text = 15 * Txtchair.Text

        ElseIf Drophalltype.SelectedValue = "3" Then
            Txtamount.Text = 8 * Txtchair.Text
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sql As String
        connect()
        sql = "insert into hall values('" & TxtID.Text & "','" & Txtfname.Text & "','" & Txtlname.Text & "','" & Txtevent.Text & "','" & Drophalltype.Text & "','" & Txtchair.Text & "','" & Txtevantdate.Text & "','" & Txtemail.Text & "','" & Txtphone.Text & "','" & Txtamount.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        'MsgBox("Account was Created")
        Label1.Text = "Data Was Saved"

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        'Try
        '    TxtID.Text = DataGridView1.Rows(e.RowIndex).Cells(0).Value
        '    TextBox2.Text = DataGridView1.Rows(e.RowIndex).Cells(1).Value
        '    TextBox3.Text = DataGridView1.Rows(e.RowIndex).Cells(2).Value
        '    ComboBox1.Text = DataGridView1.Rows(e.RowIndex).Cells(3).Value
        '    ComboBox2.Text = DataGridView1.Rows(e.RowIndex).Cells(4).Value
        '    TextBox4.Text = DataGridView1.Rows(e.RowIndex).Cells(5).Value
        '    TextBox5.Text = DataGridView1.Rows(e.RowIndex).Cells(6).Value
        '    TextBox9.Text = DataGridView1.Rows(e.RowIndex).Cells(7).Value

        'Catch ex As Exception

        'End Try
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        connect()
        sql = "delete from hall where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label1.Text = "Data Was Deleted"
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("loginpage.aspx")

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        connect()
        sql = "update hall set UserID='" & TxtID.Text & "', Fname='" & Txtfname.Text & "',Lname='" & Txtlname.Text & "',Events='" & Txtevent.Text & "',Halltype='" & Drophalltype.Text & "',HallChairs='" & Txtchair.Text & "',Eventdate='" & Txtevantdate.Text & "', Email='" & Txtemail.Text & "',PhoneNo='" & Txtphone.Text & "', AmountDeposited='" & Txtamount.Text & "' where UserID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        Label1.Text = "Data Was Updated"



    End Sub

    Protected Sub TxtID_TextChanged(sender As Object, e As EventArgs) Handles TxtID.TextChanged
        sql = " select * from hall where ID='" & TxtID.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader
        If dr.Read = True Then
            Label1.Text = "ID Alreday Exists"
        End If


    End Sub
End Class