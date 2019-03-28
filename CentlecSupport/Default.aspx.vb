Imports System.Net.Mail

Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim name As String
        Dim sname As String
        Dim comment As String
        Dim dep As String
        Dim dep2 As String

        name = txtname.Value
        sname = txtsname.Value
        comment = txtcomment.Value
        dep = department.SelectedValue
        If department.SelectedValue = "Compliance and Performance" Then
            dep2 = CaP.SelectedValue
        ElseIf department.SelectedValue = "Engineering: Retail" Then
            dep2 = retail.SelectedValue
        ElseIf department.SelectedValue = "Engineering: Wires" Then
            dep2 = Wires.SelectedValue
        End If

        'create the mail message
        Dim mail As New MailMessage()

        'set the addresses
        mail.From = New MailAddress("bkruger@giscoe.com")
        mail.[To].Add("yburger@giscoe.com")

        'set the content
        mail.Subject = dep & " - " & dep2
        mail.Body = "To whom it may concern:" & vbCrLf & vbCrLf & "Name: " & name & vbCrLf & "Surname: " & sname & vbCrLf & "Message: " & comment & vbCrLf & vbCrLf & "Regards" & vbCrLf & "Centlec Support"

        'set the server
        Dim smtp As New SmtpClient("webmail.giscoe.com")
        'smtp.EnableSsl = True
        smtp.Credentials = New System.Net.NetworkCredential("", "")
        smtp.Port = "25"

        'send the message
        Try
            smtp.Send(mail)
            lblResult.Text = "Your Email has been sent sucessfully - Thank You"
        Catch exc As Exception
            lblResult.Text = "Send failure!"
        End Try

    End Sub

    Protected Sub department_SelectedIndexChanged(sender As Object, e As EventArgs) Handles department.SelectedIndexChanged
        If department.SelectedValue = "Compliance and Performance" Then
            CaP.Visible = True
            retail.Visible = False
            Wires.Visible = False
        ElseIf department.SelectedValue = "Engineering: Retail" Then
            CaP.Visible = False
            retail.Visible = True
            Wires.Visible = False
        ElseIf department.SelectedValue = "-- Select Value --" Then
            CaP.Visible = False
            retail.Visible = False
            Wires.Visible = False
        Else
            CaP.Visible = False
            retail.Visible = False
            Wires.Visible = True
        End If


    End Sub
End Class
